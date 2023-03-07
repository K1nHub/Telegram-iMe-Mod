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

.method public static synthetic $r8$lambda$UMrUL4pCddbv3rSSYIYU2nfsXQE(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyNaE-MLWkzcWsWKlSjSE4AKwhM(Lorg/telegram/ui/DataSettingsActivity;)V
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

    .line 75
    sget v1, Lorg/telegram/messenger/NotificationCenter;->backupDidUpload:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSectionRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/DataSettingsActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSection2Row:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/DataSettingsActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataSettingsActivity;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    return p0
.end method

.method private synthetic lambda$createView$2()V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/fork/controller/BackupController;->backup(Z)V

    .line 348
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 349
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 443
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isFilesOriginalNameSavingEnabled()Z

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFilesOriginalNameSavingEnabled(Z)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 450
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    .line 453
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 454
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "mobilePreset"

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 457
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 458
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "wifiPreset"

    goto :goto_1

    .line 461
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 462
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "roamingPreset"

    .line 465
    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    .line 466
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 467
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    const-string v3, "currentMobilePreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 468
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    const-string v3, "currentWifiPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    const-string v3, "currentRoamingPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    :goto_2
    if-ge p2, v1, :cond_3

    .line 475
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 477
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

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

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_0
    if-eq p3, v1, :cond_4

    .line 527
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p4, "VoipDataSaving"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 528
    iput-boolean v2, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    .line 530
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 531
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 571
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 572
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 573
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 574
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 2

    .line 617
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->clearAllDrafts(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 617
    new-instance p1, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 616
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;-><init>()V

    .line 617
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 9

    .line 321
    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    const/4 v0, 0x1

    if-ne p3, p5, :cond_0

    .line 322
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFilesOriginalNameSavingEnabled(Z)V

    .line 323
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_b

    .line 325
    :cond_0
    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    if-ne p3, p5, :cond_2

    .line 326
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 327
    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkSwitchLocation(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result p4

    xor-int/2addr p4, v0

    invoke-virtual {p1, p4}, Lorg/fork/controller/BackupController;->setAutoBackupEnabled(Z)V

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/BackupController;->resetLastAutoBackupTime()V

    .line 330
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/BackupController;->saveConfig()V

    goto/16 :goto_b

    .line 334
    :cond_1
    invoke-static {}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;->newInstanceForAutoBackupSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 336
    :cond_2
    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    const/4 v1, 0x0

    const-string v2, "Cancel"

    if-ne p3, p5, :cond_3

    .line 337
    new-instance p2, Lcom/smedialink/model/dialog/DialogModel;

    sget p3, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    .line 338
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->backup_settings_save_manually_alert:I

    .line 339
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p4

    sget p5, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 340
    invoke-static {v2, p5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    .line 341
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, p4, p5, v0}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance p3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-static {p1, p2, p3, v1}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_b

    .line 354
    :cond_3
    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    const/16 v3, 0x4c

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq p3, p5, :cond_27

    iget v6, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-eq p3, v6, :cond_27

    iget v6, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    if-ne p3, v6, :cond_4

    goto/16 :goto_9

    .line 372
    :cond_4
    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq p3, p5, :cond_1d

    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    if-eq p3, p5, :cond_1d

    iget p5, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne p3, p5, :cond_5

    goto/16 :goto_5

    .line 434
    :cond_5
    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    const-string p5, "dialogTextRed2"

    const/4 v3, -0x1

    if-ne p3, p4, :cond_8

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 438
    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    sget p2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlertTitle:I

    const-string p3, "ResetAutomaticMediaDownloadAlertTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 440
    sget p2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlert:I

    const-string p3, "ResetAutomaticMediaDownloadAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 441
    sget p2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string p3, "Reset"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 479
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 480
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 481
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 482
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 484
    invoke-static {p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    :cond_7
    :goto_0
    return-void

    .line 486
    :cond_8
    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ne p3, p4, :cond_9

    .line 487
    new-instance p1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 488
    :cond_9
    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    if-ne p3, p4, :cond_e

    .line 489
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 491
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result p2

    const-string p4, "VoipDataSaving"

    invoke-interface {p1, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_a

    if-eq p2, v0, :cond_d

    if-eq p2, v5, :cond_c

    if-eq p2, v6, :cond_b

    :cond_a
    const/4 p2, 0x0

    goto :goto_1

    :cond_b
    const/4 p2, 0x1

    goto :goto_1

    :cond_c
    const/4 p2, 0x3

    goto :goto_1

    :cond_d
    const/4 p2, 0x2

    .line 505
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    new-array p5, v4, [Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    const-string v2, "UseLessDataNever"

    .line 506
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    sget v1, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    const-string v2, "UseLessDataOnRoaming"

    .line 507
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v0

    sget v0, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    const-string v1, "UseLessDataOnMobile"

    .line 508
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v5

    sget v0, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    const-string v1, "UseLessDataAlways"

    .line 509
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v6

    sget v0, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    const-string v1, "VoipUseLessData"

    .line 510
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;I)V

    .line 505
    invoke-static {p4, p5, v0, p2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 534
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 535
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_b

    .line 536
    :cond_e
    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    if-ne p3, p4, :cond_f

    .line 537
    new-instance p1, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {p1}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 538
    :cond_f
    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    if-ne p3, p4, :cond_14

    .line 540
    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p2, v0, :cond_10

    .line 541
    sget p1, Lorg/telegram/messenger/R$string;->data_settings_storage_path_no_flash_drive:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void

    .line 545
    :cond_10
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    sget p3, Lorg/telegram/messenger/R$string;->StoragePath:I

    const-string p4, "StoragePath"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 547
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 549
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 551
    iget-object p4, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 552
    sget-object p5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_12

    .line 553
    iget-object p5, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p5, :cond_12

    .line 554
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 555
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object p4, v3

    goto :goto_3

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 562
    :cond_12
    :goto_3
    iget-object p5, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p5, :cond_13

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 564
    new-instance v5, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 565
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v6, "radioBackground"

    .line 567
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    const-string v8, "dialogRadioBackgroundChecked"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 568
    invoke-virtual {v3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 569
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    new-instance v6, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v3, p2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 578
    :cond_13
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 579
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_b

    .line 580
    :cond_14
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    if-ne p3, p1, :cond_15

    .line 581
    new-instance p1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {p1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 582
    :cond_15
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    if-ne p3, p1, :cond_16

    .line 583
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMedia()V

    .line 584
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 585
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 586
    :cond_16
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    if-ne p3, p1, :cond_17

    .line 587
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamAllVideo()V

    .line 588
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 589
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 590
    :cond_17
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    if-ne p3, p1, :cond_18

    .line 591
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMkv()V

    .line 592
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 593
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 594
    :cond_18
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    if-ne p3, p1, :cond_19

    .line 595
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSaveStreamMedia()V

    .line 596
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 597
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 598
    :cond_19
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    if-ne p3, p1, :cond_1a

    .line 599
    new-instance p1, Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/QuickRepliesSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 600
    :cond_1a
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    if-ne p3, p1, :cond_1b

    .line 601
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayGifs()V

    .line 602
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2d

    .line 603
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 605
    :cond_1b
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    if-ne p3, p1, :cond_1c

    .line 606
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayVideo()V

    .line 607
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2d

    .line 608
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 610
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    if-ne p3, p1, :cond_2d

    .line 612
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    sget p2, Lorg/telegram/messenger/R$string;->AreYouSureClearDraftsTitle:I

    const-string p3, "AreYouSureClearDraftsTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 614
    sget p2, Lorg/telegram/messenger/R$string;->AreYouSureClearDrafts:I

    const-string p3, "AreYouSureClearDrafts"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 615
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 619
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 620
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 621
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 622
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 624
    invoke-static {p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 373
    :cond_1d
    :goto_5
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-lez p1, :cond_1f

    :cond_1e
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p1, :cond_24

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    sub-int/2addr p1, p5

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_24

    .line 374
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p4, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    move-result p1

    .line 376
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 377
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p5

    .line 384
    iget v1, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne p3, v1, :cond_20

    .line 385
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 386
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v3, "mobilePreset"

    const-string v4, "currentMobilePreset"

    const/4 v5, 0x0

    goto :goto_6

    .line 390
    :cond_20
    iget v1, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne p3, v1, :cond_21

    .line 391
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 392
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v3, "wifiPreset"

    const-string v4, "currentWifiPreset"

    const/4 v5, 0x1

    goto :goto_6

    .line 397
    :cond_21
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 398
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v3, "roamingPreset"

    const-string v4, "currentRoamingPreset"

    :goto_6
    if-nez p5, :cond_22

    .line 403
    iget-boolean v7, v1, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v7, :cond_22

    .line 404
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_7

    .line 406
    :cond_22
    iget-boolean v2, v1, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    xor-int/2addr v2, v0

    iput-boolean v2, v1, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 408
    :goto_7
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 409
    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    xor-int/2addr p5, v0

    .line 413
    invoke-virtual {p4, p5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 414
    iget-object p4, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 416
    iget-object p4, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {p4, p2, p3}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 418
    :cond_23
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 419
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2, v5}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    .line 420
    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p3, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    move-result p2

    if-eq p1, p2, :cond_2d

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b

    .line 425
    :cond_24
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne p3, p1, :cond_25

    const/4 v0, 0x0

    goto :goto_8

    .line 427
    :cond_25
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne p3, p1, :cond_26

    goto :goto_8

    :cond_26
    const/4 v0, 0x2

    .line 432
    :goto_8
    new-instance p1, Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_b

    :cond_27
    :goto_9
    if-ne p3, p5, :cond_28

    const/4 v0, 0x2

    goto :goto_a

    .line 358
    :cond_28
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-ne p3, p1, :cond_29

    const/4 v0, 0x4

    .line 363
    :cond_29
    :goto_a
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-lez p1, :cond_2b

    :cond_2a
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p1, :cond_2c

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_2c

    .line 364
    :cond_2b
    invoke-static {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->toggle()V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_b

    .line 367
    :cond_2c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "type"

    .line 368
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    new-instance p2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2d
    :goto_b
    return-void
.end method

.method private synthetic lambda$loadCacheSize$0()V
    .locals 1

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz v0, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCacheSize$1(Ljava/lang/Runnable;JLjava/lang/Long;)V
    .locals 3

    .line 241
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 242
    iget-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p1, 0x78

    cmp-long p3, v1, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    .line 243
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    .line 244
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz p1, :cond_2

    .line 246
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_2
    return-void
.end method

.method private loadCacheSize()V
    .locals 4

    .line 231
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    const-wide/16 v1, 0x64

    .line 237
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 240
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/Runnable;J)V

    invoke-static {v3}, Lorg/telegram/ui/CacheControlActivity;->calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private rebind(I)V
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 260
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

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 274
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


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->DataSettings:I

    const-string v2, "DataSettings"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DataSettingsActivity$1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 308
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    .line 310
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    .line 311
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 314
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 315
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 316
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 630
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 91
    sget p2, Lorg/telegram/messenger/NotificationCenter;->backupDidUpload:I

    if-ne p1, p2, :cond_2

    .line 92
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 98
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->cloud_albums_undo_forward_cloud:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_2
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

    .line 992
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 994
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
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

    .line 997
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

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

    .line 1004
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v5, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v5, v3, v11

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "switchTrack"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v8, v7, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "switchTrackChecked"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v7, v11

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v28, "divider"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v7, v3, v11

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v8, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlackText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteValueText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v8, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v7, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "windowBackgroundWhiteGrayText2"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "switchTrack"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "switchTrackChecked"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v6

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    const/16 v17, 0x0

    const-string v20, "windowBackgroundGrayShadow"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v29, "windowBackgroundWhiteGrayText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 635
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 161
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 162
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController;->loadAutoDownloadConfig(Z)V

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    const/4 v2, 0x0

    add-int/2addr v2, v1

    .line 165
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    add-int/lit8 v0, v2, 0x1

    .line 166
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    add-int/lit8 v2, v0, 0x1

    .line 167
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    const/4 v0, -0x1

    .line 168
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 169
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 170
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 172
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 176
    :cond_0
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    if-ne v2, v0, :cond_1

    .line 177
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 179
    :cond_1
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    add-int/lit8 v2, v3, 0x1

    .line 181
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    add-int/lit8 v3, v2, 0x1

    .line 183
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSectionRow:I

    add-int/lit8 v2, v3, 0x1

    .line 184
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    add-int/lit8 v3, v2, 0x1

    .line 185
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    add-int/lit8 v2, v3, 0x1

    .line 186
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSection2Row:I

    add-int/lit8 v3, v2, 0x1

    .line 188
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    add-int/lit8 v2, v3, 0x1

    .line 189
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    add-int/lit8 v3, v2, 0x1

    .line 190
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    add-int/lit8 v2, v3, 0x1

    .line 191
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    add-int/lit8 v3, v2, 0x1

    .line 192
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    add-int/lit8 v2, v3, 0x1

    .line 193
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    add-int/lit8 v3, v2, 0x1

    .line 195
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    add-int/lit8 v2, v3, 0x1

    .line 196
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    add-int/lit8 v3, v2, 0x1

    .line 197
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    add-int/lit8 v2, v3, 0x1

    .line 198
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    add-int/lit8 v3, v2, 0x1

    .line 199
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 201
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    add-int/lit8 v3, v2, 0x1

    .line 202
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    add-int/lit8 v2, v3, 0x1

    .line 203
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    add-int/lit8 v3, v2, 0x1

    .line 204
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    add-int/lit8 v2, v3, 0x1

    .line 205
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    add-int/lit8 v3, v2, 0x1

    .line 206
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    .line 207
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    .line 208
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    add-int/lit8 v3, v2, 0x1

    .line 209
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    goto :goto_0

    .line 211
    :cond_2
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    .line 212
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    .line 214
    :goto_0
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    .line 216
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    add-int/lit8 v0, v3, 0x1

    .line 217
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    add-int/lit8 v2, v0, 0x1

    .line 218
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    add-int/lit8 v0, v2, 0x1

    .line 219
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    add-int/lit8 v2, v0, 0x1

    .line 220
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    add-int/lit8 v0, v2, 0x1

    .line 221
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    add-int/lit8 v2, v0, 0x1

    .line 222
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    add-int/lit8 v0, v2, 0x1

    .line 223
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    add-int/lit8 v2, v0, 0x1

    .line 224
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    add-int/lit8 v0, v2, 0x1

    .line 225
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 281
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 282
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 640
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 641
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->loadCacheSize()V

    .line 642
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->rebindAll()V

    return-void
.end method
