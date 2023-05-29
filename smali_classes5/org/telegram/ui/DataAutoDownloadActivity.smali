.class public Lorg/telegram/ui/DataAutoDownloadActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DataAutoDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private animateChecked:Z

.field private autoDownloadRow:I

.field private autoDownloadSectionRow:I

.field private currentPresetNum:I

.field private currentType:I

.field private defaultPreset:Lorg/telegram/messenger/DownloadController$Preset;

.field private filesRow:I

.field private highPreset:Lorg/telegram/messenger/DownloadController$Preset;

.field private key:Ljava/lang/String;

.field private key2:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

.field private mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

.field private photosRow:I

.field private presets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/DownloadController$Preset;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private selectedPreset:I

.field private typeHeaderRow:I

.field private typePreset:Lorg/telegram/messenger/DownloadController$Preset;

.field private typeSectionRow:I

.field private usageHeaderRow:I

.field private usageProgressRow:I

.field private usageSectionRow:I

.field private videosRow:I

.field private wereAnyChanges:Z


# direct methods
.method public static synthetic $r8$lambda$Aaje1_7nDkNeMDeAP-0Si1Gc9-8(Lorg/telegram/ui/DataAutoDownloadActivity;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;I[Lorg/telegram/ui/Cells/TextCheckCell;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$createView$3([Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;I[Lorg/telegram/ui/Cells/TextCheckCell;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EV-b22BuW_PQvp-wkdrK47840LY([Lorg/telegram/ui/Cells/TextCheckCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$createView$1([Lorg/telegram/ui/Cells/TextCheckCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R96XOf-rVS0YOv_R2I4PywLbC24(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$createView$2(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TATOZfFIhZjnKeWYDPb170Pyk4E(Lorg/telegram/ui/DataAutoDownloadActivity;Lorg/telegram/ui/Cells/TextCheckBoxCell;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$createView$0(Lorg/telegram/ui/Cells/TextCheckBoxCell;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5C5DySGqIY6buMbuIOPcYfhJow(Lorg/telegram/messenger/DownloadController$Preset;Lorg/telegram/messenger/DownloadController$Preset;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$fillPresets$5(Lorg/telegram/messenger/DownloadController$Preset;Lorg/telegram/messenger/DownloadController$Preset;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gxd2PTT1JYXIBdQ_hP6Rwl2x6TE(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataAutoDownloadActivity;->lambda$createView$4(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    .line 97
    iput p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    .line 99
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 100
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 101
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 103
    iget p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    if-nez p1, :cond_0

    .line 104
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    iput p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    .line 105
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->defaultPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string p1, "mobilePreset"

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key:Ljava/lang/String;

    const-string p1, "currentMobilePreset"

    .line 108
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 110
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    iput p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    .line 111
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->defaultPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string p1, "wifiPreset"

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key:Ljava/lang/String;

    const-string p1, "currentWifiPreset"

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key2:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    iput p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    .line 117
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->defaultPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string p1, "roamingPreset"

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key:Ljava/lang/String;

    const-string p1, "currentRoamingPreset"

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key2:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DataAutoDownloadActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->animateChecked:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->filesRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeSectionRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadSectionRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageSectionRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageProgressRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DataAutoDownloadActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/DataAutoDownloadActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DataAutoDownloadActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->key2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageHeaderRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/DataAutoDownloadActivity;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeHeaderRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DataAutoDownloadActivity;Lorg/telegram/ui/Components/SlideChooseView;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->updatePresetChoseView(Lorg/telegram/ui/Components/SlideChooseView;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataAutoDownloadActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private fillPresets()V
    .locals 3

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda4;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    iget v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 596
    :cond_1
    iget v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 598
    :cond_2
    iget v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    goto :goto_3

    .line 599
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    goto :goto_3

    .line 597
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    goto :goto_3

    .line 595
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    .line 603
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_8

    .line 604
    iget v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageProgressRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 605
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/SlideChooseView;

    if-eqz v1, :cond_7

    .line 606
    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->updatePresetChoseView(Lorg/telegram/ui/Components/SlideChooseView;)V

    goto :goto_4

    .line 608
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageProgressRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Cells/TextCheckBoxCell;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3

    .line 331
    invoke-virtual {p7}, Landroid/view/View;->isEnabled()Z

    move-result p7

    if-nez p7, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result p7

    const/4 v0, 0x1

    xor-int/2addr p7, v0

    invoke-virtual {p1, p7}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setChecked(Z)V

    const/4 p1, 0x0

    move p7, p1

    .line 336
    :goto_0
    array-length v1, p2

    if-ge p7, v1, :cond_2

    .line 337
    aget-object v1, p2, p7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_2
    move v0, p1

    .line 342
    :goto_1
    iget p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne p3, p2, :cond_5

    aget-object p2, p4, p1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_5

    .line 343
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    aget-object p3, p4, p1

    invoke-virtual {p3, v0, p2}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 345
    aget-object p3, p4, p1

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->getSize()J

    move-result-wide p3

    const-wide/32 v1, 0x200000

    cmp-long p3, p3, v1

    if-lez p3, :cond_3

    .line 346
    aget-object p3, p5, p1

    invoke-virtual {p3, v0, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 349
    :cond_3
    aget-object p3, p6, p1

    if-eqz p3, :cond_4

    .line 350
    aget-object p3, p6, p1

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p3, 0x0

    .line 351
    aput-object p3, p6, p1

    .line 353
    :cond_4
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object p3, p6, p1

    .line 354
    aget-object p3, p6, p1

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 355
    aget-object p2, p6, p1

    new-instance p3, Lorg/telegram/ui/DataAutoDownloadActivity$2;

    invoke-direct {p3, p0, p6}, Lorg/telegram/ui/DataAutoDownloadActivity$2;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;[Landroid/animation/AnimatorSet;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    aget-object p2, p6, p1

    const-wide/16 p3, 0x96

    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 364
    aget-object p1, p6, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$createView$1([Lorg/telegram/ui/Cells/TextCheckCell;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 408
    aget-object v0, p0, p1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private static synthetic lambda$createView$2(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    .line 462
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$3([Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;I[Lorg/telegram/ui/Cells/TextCheckCell;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    move-object v0, p0

    move v1, p2

    move/from16 v2, p6

    .line 473
    iget v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_0

    .line 475
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_0

    :cond_0
    if-ne v3, v5, :cond_1

    .line 477
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 479
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    :cond_2
    :goto_0
    const/4 v3, 0x0

    move v6, v3

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    .line 484
    aget-object v7, p1, v6

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 485
    iget-object v7, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v7, v7, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    aget v8, v7, v6

    or-int/2addr v8, v1

    aput v8, v7, v6

    goto :goto_2

    .line 487
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v7, v7, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    aget v8, v7, v6

    not-int v9, v1

    and-int/2addr v8, v9

    aput v8, v7, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 490
    :cond_4
    aget-object v1, p3, v3

    if-eqz v1, :cond_5

    .line 491
    aget-object v1, p3, v3

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->getSize()J

    .line 492
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-object v6, p3, v3

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v6, v6

    aput-wide v6, v1, p4

    .line 494
    :cond_5
    aget-object v1, p5, v3

    if-eqz v1, :cond_7

    .line 495
    iget v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne v2, v1, :cond_6

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    aget-object v6, p5, v3

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v6

    iput-boolean v6, v1, Lorg/telegram/messenger/DownloadController$Preset;->preloadVideo:Z

    goto :goto_3

    .line 498
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    aget-object v6, p5, v3

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v6

    iput-boolean v6, v1, Lorg/telegram/messenger/DownloadController$Preset;->preloadMusic:Z

    .line 501
    :cond_7
    :goto_3
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 502
    iget-object v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v6}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p7

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 503
    iput v4, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    move-object/from16 v6, p8

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 504
    iget v4, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    if-nez v4, :cond_8

    .line 505
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v6, v4, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    goto :goto_4

    :cond_8
    if-ne v4, v5, :cond_9

    .line 507
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v6, v4, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    goto :goto_4

    .line 509
    :cond_9
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v6, v4, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    .line 511
    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 514
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v4, p10

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 516
    iput-boolean v5, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->animateChecked:Z

    .line 517
    iget-object v4, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 518
    iput-boolean v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->animateChecked:Z

    .line 520
    :cond_a
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 521
    iput-boolean v5, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    .line 522
    invoke-direct {p0}, Lorg/telegram/ui/DataAutoDownloadActivity;->fillPresets()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;IFF)V
    .locals 29

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v8, p2

    .line 168
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadRow:I

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v13, 0x3

    const/16 v14, 0x8

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-ne v8, v0, :cond_9

    .line 169
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    if-eq v0, v13, :cond_2

    if-nez v0, :cond_0

    .line 171
    iget-object v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_0

    :cond_0
    if-ne v0, v15, :cond_1

    .line 173
    iget-object v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_0

    :cond_1
    if-ne v0, v9, :cond_2

    .line 175
    iget-object v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v1, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    .line 179
    :cond_2
    :goto_0
    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 180
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->defaultPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    invoke-static {v3, v7, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 185
    :cond_3
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    xor-int/2addr v3, v15

    iput-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 187
    :goto_1
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v2, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_2

    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    xor-int/lit8 v2, v1, 0x1

    .line 188
    iget-object v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_3

    :cond_5
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_3
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DataAutoDownloadActivity;->updateRows()V

    .line 190
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v2, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    iget v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadSectionRow:I

    add-int/2addr v3, v15

    invoke-virtual {v2, v3, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_4

    .line 193
    :cond_6
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    iget v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadSectionRow:I

    add-int/2addr v3, v15

    invoke-virtual {v2, v3, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 195
    :goto_4
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    iget v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadSectionRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 196
    iget v2, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 197
    iget-object v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->key:Ljava/lang/String;

    iget-object v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-object v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->key2:Ljava/lang/String;

    iput v13, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    iget v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    if-nez v3, :cond_7

    .line 200
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    goto :goto_5

    :cond_7
    if-ne v3, v15, :cond_8

    .line 202
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    goto :goto_5

    .line 204
    :cond_8
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    .line 206
    :goto_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    xor-int/2addr v1, v15

    .line 208
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 209
    iget v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 210
    iput-boolean v15, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    goto/16 :goto_19

    .line 211
    :cond_9
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    if-eq v8, v0, :cond_a

    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-eq v8, v0, :cond_a

    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->filesRow:I

    if-ne v8, v0, :cond_30

    .line 212
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 216
    :cond_b
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    if-ne v8, v0, :cond_c

    move v6, v15

    goto :goto_6

    .line 218
    :cond_c
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne v8, v0, :cond_d

    move v6, v10

    goto :goto_6

    :cond_d
    move v6, v14

    .line 223
    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v16

    .line 228
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    if-nez v0, :cond_e

    .line 229
    iget v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    const-string v1, "mobilePreset"

    const-string v2, "currentMobilePreset"

    :goto_7
    move-object v5, v0

    move-object v4, v1

    move-object v3, v2

    goto :goto_8

    :cond_e
    if-ne v0, v15, :cond_f

    .line 233
    iget v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    const-string v1, "wifiPreset"

    const-string v2, "currentWifiPreset"

    goto :goto_7

    .line 237
    :cond_f
    iget v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    const-string v1, "roamingPreset"

    const-string v2, "currentRoamingPreset"

    goto :goto_7

    .line 242
    :goto_8
    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 243
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result v1

    .line 245
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v17, 0x4c

    if-eqz v2, :cond_10

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_11

    :cond_10
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v2, v2, v17

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1d

    .line 247
    :cond_11
    iget v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    if-eq v2, v13, :cond_14

    if-nez v2, :cond_12

    .line 249
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v9, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_9

    :cond_12
    if-ne v2, v15, :cond_13

    .line 251
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v9, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_9

    :cond_13
    if-ne v2, v9, :cond_14

    .line 253
    iget-object v2, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v9, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    :cond_14
    :goto_9
    move v2, v7

    .line 258
    :goto_a
    iget-object v9, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v9, v9, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v9, v9

    if-ge v2, v9, :cond_16

    .line 259
    iget-object v9, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    aget v9, v9, v2

    and-int/2addr v9, v6

    if-eqz v9, :cond_15

    move v2, v15

    goto :goto_b

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    move v2, v7

    .line 264
    :goto_b
    iget-object v5, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v9, v5

    if-ge v7, v9, :cond_19

    if-eqz v1, :cond_17

    .line 266
    aget v9, v5, v7

    not-int v10, v6

    and-int/2addr v9, v10

    aput v9, v5, v7

    goto :goto_c

    :cond_17
    if-nez v2, :cond_18

    .line 268
    aget v9, v5, v7

    or-int/2addr v9, v6

    aput v9, v5, v7

    :cond_18
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 272
    :cond_19
    iget v2, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 273
    iget-object v5, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v5}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    iput v13, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    iget v3, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    if-nez v3, :cond_1a

    .line 276
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    goto :goto_d

    :cond_1a
    if-ne v3, v15, :cond_1b

    .line 278
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    goto :goto_d

    .line 280
    :cond_1b
    iget v3, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget v4, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->currentPresetNum:I

    iput v4, v3, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    .line 282
    :goto_d
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    xor-int/2addr v1, v15

    .line 284
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 285
    iget-object v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 287
    iget-object v1, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    invoke-virtual {v1, v0, v8}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 289
    :cond_1c
    iget v0, v12, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 290
    iput-boolean v15, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    .line 291
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DataAutoDownloadActivity;->fillPresets()V

    goto/16 :goto_19

    .line 293
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 296
    :cond_1e
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 298
    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 299
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 301
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 303
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v20, 0x15

    const/16 v21, 0xf

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    .line 304
    iget v14, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    if-ne v8, v14, :cond_1f

    .line 305
    sget v14, Lorg/telegram/messenger/R$string;->AutoDownloadPhotosTitle:I

    const-string v13, "AutoDownloadPhotosTitle"

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 306
    :cond_1f
    iget v13, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne v8, v13, :cond_20

    .line 307
    sget v13, Lorg/telegram/messenger/R$string;->AutoDownloadVideosTitle:I

    const-string v14, "AutoDownloadVideosTitle"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 309
    :cond_20
    sget v13, Lorg/telegram/messenger/R$string;->AutoDownloadFilesTitle:I

    const-string v14, "AutoDownloadFilesTitle"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    const/4 v13, -0x1

    const/4 v14, -0x2

    .line 311
    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v9, v15, [Lorg/telegram/ui/Cells/MaxFileSizeCell;

    new-array v0, v15, [Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v14, v15, [Landroid/animation/AnimatorSet;

    new-array v13, v10, [Lorg/telegram/ui/Cells/TextCheckBoxCell;

    :goto_f
    if-ge v7, v10, :cond_29

    .line 319
    new-instance v10, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v10, v15, v0, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;ZZ)V

    aput-object v10, v13, v7

    if-nez v7, :cond_22

    .line 321
    aget-object v0, v13, v7

    sget v15, Lorg/telegram/messenger/R$string;->AutodownloadContacts:I

    const-string v1, "AutodownloadContacts"

    invoke-static {v1, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v15, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    const/16 v20, 0x0

    aget v15, v15, v20

    and-int/2addr v15, v6

    move-object/from16 v25, v2

    const/4 v2, 0x1

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    goto :goto_10

    :cond_21
    const/4 v15, 0x0

    :goto_10
    invoke-virtual {v0, v1, v15, v2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_15

    :cond_22
    move-object/from16 v25, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_24

    .line 323
    aget-object v0, v13, v7

    sget v1, Lorg/telegram/messenger/R$string;->AutodownloadPrivateChats:I

    const-string v15, "AutodownloadPrivateChats"

    invoke-static {v15, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v15, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    aget v15, v15, v2

    and-int/2addr v15, v6

    if-eqz v15, :cond_23

    move v15, v2

    goto :goto_11

    :cond_23
    const/4 v15, 0x0

    :goto_11
    invoke-virtual {v0, v1, v15, v2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_15

    :cond_24
    const/4 v15, 0x2

    if-ne v7, v15, :cond_26

    .line 325
    aget-object v0, v13, v7

    sget v1, Lorg/telegram/messenger/R$string;->AutodownloadGroupChats:I

    const-string v2, "AutodownloadGroupChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    aget v2, v2, v15

    and-int/2addr v2, v6

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_12

    :cond_25
    const/4 v2, 0x0

    :goto_12
    const/4 v15, 0x1

    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_15

    .line 327
    :cond_26
    aget-object v0, v13, v7

    sget v1, Lorg/telegram/messenger/R$string;->AutodownloadChannels:I

    const-string v2, "AutodownloadChannels"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    const/4 v15, 0x3

    aget v2, v2, v15

    and-int/2addr v2, v6

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_13

    :cond_27
    const/4 v2, 0x0

    :goto_13
    iget v15, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    if-eq v8, v15, :cond_28

    const/4 v15, 0x1

    goto :goto_14

    :cond_28
    const/4 v15, 0x0

    :goto_14
    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 329
    :goto_15
    aget-object v0, v13, v7

    const/4 v15, 0x0

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    aget-object v2, v13, v7

    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda1;

    move-object/from16 v20, v23

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v15, v24

    move-object/from16 v1, p0

    move-object v8, v2

    move-object/from16 v26, v25

    move-object v2, v10

    move-object v10, v3

    move-object v3, v13

    move-object/from16 v24, v4

    move/from16 v4, p2

    move-object/from16 v25, v10

    move-object v10, v5

    move-object v5, v9

    move/from16 v27, v6

    move-object/from16 v6, v20

    move/from16 v23, v7

    move-object/from16 v28, v10

    const/4 v10, 0x0

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;Lorg/telegram/ui/Cells/TextCheckBoxCell;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    aget-object v0, v13, v23

    const/16 v1, 0x32

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v23, 0x1

    move-object/from16 v11, p1

    move/from16 v8, p2

    move-object v1, v15

    move-object/from16 v0, v20

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    move/from16 v6, v27

    move-object/from16 v5, v28

    const/4 v10, 0x4

    goto/16 :goto_f

    :cond_29
    move-object/from16 v20, v0

    move-object v15, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v28, v5

    move/from16 v27, v6

    const/4 v10, 0x0

    .line 370
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    const/4 v7, 0x0

    move/from16 v8, p2

    if-eq v8, v0, :cond_2b

    .line 371
    new-instance v11, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 373
    new-instance v17, Lorg/telegram/ui/DataAutoDownloadActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object v4, v11

    move-object/from16 v5, v20

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/DataAutoDownloadActivity$3;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/content/Context;ILorg/telegram/ui/Cells/TextInfoPrivacyCell;[Lorg/telegram/ui/Cells/TextCheckCell;[Landroid/animation/AnimatorSet;)V

    aput-object v17, v9, v10

    .line 403
    aget-object v0, v9, v10

    move-object/from16 v1, v28

    iget-object v2, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v3, v2, v16

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->setSize(J)V

    .line 404
    aget-object v0, v9, v10

    const/16 v2, 0x32

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0x15

    const/4 v5, 0x1

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v6, v20

    aput-object v0, v6, v10

    .line 407
    aget-object v0, v6, v10

    const/16 v2, 0x30

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    aget-object v0, v6, v10

    new-instance v2, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6}, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda3;-><init>([Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 411
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 412
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 413
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x2

    const/4 v2, -0x1

    .line 414
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne v8, v0, :cond_2a

    .line 417
    aget-object v0, v9, v10

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadMaxVideoSize:I

    const-string v3, "AutoDownloadMaxVideoSize"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->setText(Ljava/lang/String;)V

    .line 418
    aget-object v0, v6, v10

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadVideo:I

    const-string v3, "AutoDownloadPreloadVideo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lorg/telegram/messenger/DownloadController$Preset;->preloadVideo:Z

    invoke-virtual {v0, v2, v3, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 419
    sget v0, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadVideoInfo:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v4, v2, v16

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    const-string v2, "AutoDownloadPreloadVideoInfo"

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 421
    :cond_2a
    aget-object v0, v9, v10

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadMaxFileSize:I

    const-string v3, "AutoDownloadMaxFileSize"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->setText(Ljava/lang/String;)V

    .line 422
    aget-object v0, v6, v10

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadMusic:I

    const-string v3, "AutoDownloadPreloadMusic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lorg/telegram/messenger/DownloadController$Preset;->preloadMusic:Z

    invoke-virtual {v0, v2, v3, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 423
    sget v0, Lorg/telegram/messenger/R$string;->AutoDownloadPreloadMusicInfo:I

    const-string v2, "AutoDownloadPreloadMusicInfo"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_2b
    move-object/from16 v6, v20

    move-object/from16 v1, v28

    aput-object v7, v9, v10

    aput-object v7, v6, v10

    .line 429
    new-instance v0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 430
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 431
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :goto_16
    iget v0, v12, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    if-ne v8, v0, :cond_2f

    move v0, v10

    const/4 v2, 0x4

    :goto_17
    if-ge v0, v2, :cond_2d

    .line 436
    aget-object v3, v13, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v0, 0x1

    goto :goto_18

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    move v0, v10

    :goto_18
    if-nez v0, :cond_2e

    .line 442
    aget-object v0, v9, v10

    invoke-virtual {v0, v10, v7}, Lorg/telegram/ui/Cells/MaxFileSizeCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 443
    aget-object v0, v6, v10

    invoke-virtual {v0, v10, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 445
    :cond_2e
    iget-object v0, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v1, v0, v16

    const-wide/32 v3, 0x200000

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2f

    .line 446
    aget-object v0, v6, v10

    invoke-virtual {v0, v10, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 450
    :cond_2f
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 451
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v1, 0x34

    const/4 v2, -0x1

    .line 452
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    .line 455
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 456
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 457
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "fonts/rmedium.ttf"

    .line 458
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    sget v7, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v11, "Cancel"

    invoke-static {v11, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0xa

    .line 460
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v1, v11, v10, v14, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v11, 0x33

    const/16 v14, 0x24

    const/4 v15, -0x2

    .line 461
    invoke-static {v15, v14, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v11, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda0;

    move-object/from16 v15, v26

    invoke-direct {v11, v15}, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    new-instance v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 465
    invoke-virtual {v11, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 468
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 469
    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v11, v1, v10, v2, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x35

    const/4 v2, -0x2

    .line 471
    invoke-static {v2, v14, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    new-instance v14, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v27

    move-object v4, v9

    move/from16 v5, v16

    move/from16 v7, p2

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object v10, v15

    move-object v13, v11

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;[Lorg/telegram/ui/Cells/TextCheckBoxCell;I[Lorg/telegram/ui/Cells/MaxFileSizeCell;I[Lorg/telegram/ui/Cells/TextCheckCell;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_30
    :goto_19
    return-void
.end method

.method private static synthetic lambda$fillPresets$5(Lorg/telegram/messenger/DownloadController$Preset;Lorg/telegram/messenger/DownloadController$Preset;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    .line 557
    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v3

    const/16 v4, 0x8

    .line 558
    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    .line 561
    :goto_0
    iget-object v10, v0, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v11, v10

    const/4 v12, 0x1

    if-ge v7, v11, :cond_3

    .line 562
    aget v11, v10, v7

    and-int/2addr v11, v2

    if-eqz v11, :cond_0

    move v8, v12

    .line 565
    :cond_0
    aget v10, v10, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_1

    move v9, v12

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v7, v6

    move v10, v7

    move v11, v10

    .line 574
    :goto_2
    iget-object v13, v1, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v14, v13

    if-ge v7, v14, :cond_7

    .line 575
    aget v14, v13, v7

    and-int/2addr v14, v2

    if-eqz v14, :cond_4

    move v10, v12

    .line 578
    :cond_4
    aget v13, v13, v7

    and-int/2addr v13, v4

    if-eqz v13, :cond_5

    move v11, v12

    :cond_5
    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const-wide/16 v13, 0x0

    if-eqz v8, :cond_8

    .line 585
    iget-object v2, v0, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v7, v2, v3

    goto :goto_4

    :cond_8
    move-wide v7, v13

    :goto_4
    if-eqz v9, :cond_9

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v15, v0, v5

    goto :goto_5

    :cond_9
    move-wide v15, v13

    :goto_5
    add-long/2addr v7, v15

    if-eqz v10, :cond_a

    .line 586
    iget-object v0, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v2, v0, v3

    goto :goto_6

    :cond_a
    move-wide v2, v13

    :goto_6
    if-eqz v11, :cond_b

    iget-object v0, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    aget-wide v13, v0, v5

    :cond_b
    add-long/2addr v2, v13

    cmp-long v0, v7, v2

    if-lez v0, :cond_c

    return v12

    :cond_c
    if-gez v0, :cond_d

    const/4 v0, -0x1

    return v0

    :cond_d
    return v6
.end method

.method private updatePresetChoseView(Lorg/telegram/ui/Components/SlideChooseView;)V
    .locals 4

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 880
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 881
    iget-object v2, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->presets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/DownloadController$Preset;

    .line 882
    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    if-ne v2, v3, :cond_0

    .line 883
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadLow:I

    const-string v3, "AutoDownloadLow"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 884
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    if-ne v2, v3, :cond_1

    .line 885
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadMedium:I

    const-string v3, "AutoDownloadMedium"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 886
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    if-ne v2, v3, :cond_2

    .line 887
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadHigh:I

    const-string v3, "AutoDownloadHigh"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 889
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadCustom:I

    const-string v3, "AutoDownloadCustom"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_3
    iget v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->selectedPreset:I

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 614
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 615
    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadRow:I

    add-int/lit8 v0, v1, 0x1

    .line 616
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->autoDownloadSectionRow:I

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v1, v1, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 618
    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 619
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageProgressRow:I

    add-int/lit8 v1, v0, 0x1

    .line 620
    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 621
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 622
    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    add-int/lit8 v0, v1, 0x1

    .line 623
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    add-int/lit8 v1, v0, 0x1

    .line 624
    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->filesRow:I

    add-int/lit8 v0, v1, 0x1

    .line 625
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeSectionRow:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 627
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageHeaderRow:I

    .line 628
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageProgressRow:I

    .line 629
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->usageSectionRow:I

    .line 630
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeHeaderRow:I

    .line 631
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->photosRow:I

    .line 632
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->videosRow:I

    .line 633
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->filesRow:I

    .line 634
    iput v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->typeSectionRow:I

    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 135
    iget v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnMobileData:I

    const-string v3, "AutoDownloadOnMobileData"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnWiFiData:I

    const-string v3, "AutoDownloadOnWiFiData"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnRoamingData:I

    const-string v3, "AutoDownloadOnRoamingData"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 145
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/DataAutoDownloadActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DataAutoDownloadActivity$1;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 155
    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    .line 157
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 158
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 161
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 162
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 163
    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 164
    iget-object v3, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataAutoDownloadActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 897
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
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

    .line 902
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v11

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v26, v4, v6

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v11

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    const/16 v28, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v11

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v4, v3, v11

    const-string v4, "valueTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v7

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v31

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v4, v3, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v7

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v5, v4, v11

    const/16 v28, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataAutoDownloadActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v4, v3, v11

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 126
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/DataAutoDownloadActivity;->fillPresets()V

    .line 128
    invoke-direct {p0}, Lorg/telegram/ui/DataAutoDownloadActivity;->updateRows()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 541
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 542
    iget-boolean v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    if-eqz v0, :cond_0

    .line 543
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->wereAnyChanges:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 533
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity;->listAdapter:Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
