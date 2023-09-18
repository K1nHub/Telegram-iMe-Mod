.class public final Lcom/iMe/fork/controller/BackupController;
.super Lorg/telegram/messenger/BaseController;
.source "BackupController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/BackupController$Companion;,
        Lcom/iMe/fork/controller/BackupController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,801:1\n56#2,6:802\n766#3:808\n857#3,2:809\n1054#3:811\n1855#3,2:812\n1855#3,2:814\n1549#3:816\n1620#3,3:817\n1855#3,2:821\n1002#3,2:823\n1855#3,2:825\n1963#3,14:828\n1855#3,2:843\n1045#3:845\n1559#3:846\n1590#3,4:847\n1045#3:851\n1559#3:852\n1590#3,4:853\n1855#3,2:857\n1#4:820\n13579#5:827\n13580#5:842\n*S KotlinDebug\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController\n*L\n72#1:802,6\n258#1:808\n258#1:809,2\n258#1:811\n638#1:812,2\n643#1:814,2\n652#1:816\n652#1:817,3\n676#1:821,2\n692#1:823,2\n700#1:825,2\n716#1:828,14\n730#1:843,2\n742#1:845\n743#1:846\n743#1:847,4\n749#1:851\n750#1:852\n750#1:853,4\n355#1:857,2\n711#1:827\n711#1:842\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/BackupController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/BackupController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final gson$delegate:Lkotlin/Lazy;

.field private isAutoBackupEnabled:Z

.field private lastAutoBackupTime:J

.field private selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;


# direct methods
.method public static synthetic $r8$lambda$5bFOZY61u4l8BMM_00P6iOtxEyY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->migrateToCurrentVersion$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WYWPV3fnC-07erbwZY3ejbwNjOk(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$16$lambda$15(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$arsfNws3oEDFUEivp-FrH8pT1AA(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$16$lambda$14(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pj0_48HRwVw8JDzCqewsJnB92HE(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$16(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/BackupController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/BackupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/BackupController;->Companion:Lcom/iMe/fork/controller/BackupController$Companion;

    .line 790
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/BackupController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/BackupController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->gson$delegate:Lkotlin/Lazy;

    .line 75
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 77
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 78
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 69
    sget-object v0, Lcom/iMe/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final buildBackupFileName(J)Ljava/lang/String;
    .locals 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMeBackup_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    sget-object v1, Lcom/iMe/common/Constants;->INSTANCE:Lcom/iMe/common/Constants;

    invoke-virtual {v1}, Lcom/iMe/common/Constants;->getDateDotsFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".ime"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/fork/controller/BackupController;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/BackupController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/BackupController;->Companion:Lcom/iMe/fork/controller/BackupController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/BackupController$Companion;->getInstance(I)Lcom/iMe/fork/controller/BackupController;

    move-result-object p0

    return-object p0
.end method

.method public static final isBackupFileName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/BackupController;->Companion:Lcom/iMe/fork/controller/BackupController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/BackupController$Companion;->isBackupFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final migrateToCurrentVersion(Lcom/iMe/fork/models/backup/Backup;)Lcom/iMe/fork/models/backup/Backup;
    .locals 244

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/backup/Backup;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    move-object/from16 v3, p1

    :goto_1
    const/16 v4, 0xf

    if-ge v0, v4, :cond_2a

    const/16 v15, 0xa

    const/16 v123, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    move/from16 v123, v1

    move v1, v2

    goto/16 :goto_17

    .line 769
    :pswitch_1
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 770
    new-instance v5, Lcom/iMe/fork/models/SortingTabState;

    .line 771
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    new-array v7, v2, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 772
    invoke-virtual {v6}, Lcom/iMe/fork/enums/SortingFilter;->getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v7}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 773
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 770
    invoke-direct {v5, v6, v7, v8, v1}, Lcom/iMe/fork/models/SortingTabState;-><init>(Lcom/iMe/fork/enums/SortingFilter;Ljava/util/Set;IZ)V

    .line 775
    invoke-static {v5}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/fork/models/SortingTabState;)Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    move-result-object v5

    .line 776
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 757
    :pswitch_2
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 758
    new-instance v5, Lcom/iMe/fork/models/SortingTabState;

    .line 759
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->DRAFTS:Lcom/iMe/fork/enums/SortingFilter;

    new-array v7, v2, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 760
    invoke-virtual {v6}, Lcom/iMe/fork/enums/SortingFilter;->getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v7}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 761
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 758
    invoke-direct {v5, v6, v7, v8, v1}, Lcom/iMe/fork/models/SortingTabState;-><init>(Lcom/iMe/fork/enums/SortingFilter;Ljava/util/Set;IZ)V

    .line 763
    invoke-static {v5}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/fork/models/SortingTabState;)Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    move-result-object v5

    .line 764
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 740
    :pswitch_3
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    .line 741
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1045
    new-instance v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1559
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v83

    if-eqz v83, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    add-int/lit8 v84, v14, 0x1

    if-gez v14, :cond_2

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object/from16 v15, v83

    check-cast v15, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 743
    invoke-virtual {v15, v14}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    .line 1592
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v14, v84

    const/16 v15, 0xa

    goto :goto_3

    .line 744
    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object/from16 v1, v123

    :goto_4
    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, -0x1

    const/16 v119, -0x1

    const/16 v120, -0x4001

    const v121, 0x3ffff

    const/16 v122, 0x0

    const/4 v2, 0x0

    move-object v14, v2

    const/16 v2, 0xa

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move-object/from16 v49, v50

    move-object/from16 v50, v51

    move-object/from16 v51, v52

    move-object/from16 v52, v53

    move-object/from16 v53, v54

    move-object/from16 v54, v55

    move-object/from16 v55, v56

    move-object/from16 v56, v57

    move-object/from16 v57, v58

    move-object/from16 v58, v59

    move-object/from16 v59, v60

    move-object/from16 v60, v61

    move-object/from16 v61, v62

    move-object/from16 v62, v63

    move-object/from16 v63, v64

    move-object/from16 v64, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v67

    move-object/from16 v67, v68

    move-object/from16 v68, v69

    move-object/from16 v69, v70

    move-object/from16 v70, v71

    move-object/from16 v71, v72

    move-object/from16 v72, v73

    move-object/from16 v73, v74

    move-object/from16 v74, v75

    move-object/from16 v75, v76

    move-object/from16 v76, v77

    move-object/from16 v77, v78

    move-object/from16 v78, v79

    move-object/from16 v79, v80

    move-object/from16 v80, v81

    move-object/from16 v81, v82

    move-object/from16 v82, v1

    .line 741
    invoke-static/range {v3 .. v122}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Lcom/iMe/fork/enums/FormattingPanelType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/Set;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v3

    goto :goto_5

    :cond_5
    move v2, v15

    :goto_5
    move-object/from16 v124, v3

    .line 747
    invoke-virtual/range {v124 .. v124}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v150, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v153, 0x0

    const/16 v154, 0x0

    const/16 v155, 0x0

    const/16 v156, 0x0

    const/16 v157, 0x0

    const/16 v158, 0x0

    const/16 v159, 0x0

    const/16 v160, 0x0

    const/16 v161, 0x0

    const/16 v162, 0x0

    const/16 v163, 0x0

    const/16 v164, 0x0

    const/16 v165, 0x0

    const/16 v166, 0x0

    const/16 v167, 0x0

    const/16 v168, 0x0

    const/16 v169, 0x0

    const/16 v170, 0x0

    const/16 v171, 0x0

    const/16 v172, 0x0

    const/16 v173, 0x0

    const/16 v174, 0x0

    const/16 v175, 0x0

    const/16 v176, 0x0

    const/16 v177, 0x0

    const/16 v178, 0x0

    const/16 v179, 0x0

    const/16 v180, 0x0

    const/16 v181, 0x0

    const/16 v182, 0x0

    const/16 v183, 0x0

    const/16 v184, 0x0

    const/16 v185, 0x0

    const/16 v186, 0x0

    const/16 v187, 0x0

    const/16 v188, 0x0

    const/16 v189, 0x0

    const/16 v190, 0x0

    const/16 v191, 0x0

    const/16 v192, 0x0

    const/16 v193, 0x0

    const/16 v194, 0x0

    const/16 v195, 0x0

    const/16 v196, 0x0

    const/16 v197, 0x0

    const/16 v198, 0x0

    const/16 v199, 0x0

    const/16 v200, 0x0

    const/16 v201, 0x0

    const/16 v202, 0x0

    const/16 v203, 0x0

    const/16 v204, 0x0

    .line 748
    invoke-virtual/range {v124 .. v124}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1045
    new-instance v3, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;

    invoke-direct {v3}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1559
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_6

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6
    check-cast v4, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 750
    invoke-virtual {v4, v2}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    .line 1592
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_6

    .line 751
    :cond_7
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v123

    :cond_8
    move-object/from16 v205, v123

    const/16 v206, 0x0

    const/16 v207, 0x0

    const/16 v208, 0x0

    const/16 v209, 0x0

    const/16 v210, 0x0

    const/16 v211, 0x0

    const/16 v212, 0x0

    const/16 v213, 0x0

    const/16 v214, 0x0

    const/16 v215, 0x0

    const/16 v216, 0x0

    const/16 v217, 0x0

    const/16 v218, 0x0

    const/16 v219, 0x0

    const/16 v220, 0x0

    const/16 v221, 0x0

    const/16 v222, 0x0

    const/16 v223, 0x0

    const/16 v224, 0x0

    const/16 v225, 0x0

    const/16 v226, 0x0

    const/16 v227, 0x0

    const/16 v228, 0x0

    const/16 v229, 0x0

    const/16 v230, 0x0

    const/16 v231, 0x0

    const/16 v232, 0x0

    const/16 v233, 0x0

    const/16 v234, 0x0

    const/16 v235, 0x0

    const/16 v236, 0x0

    const/16 v237, 0x0

    const/16 v238, 0x0

    const/16 v239, -0x1

    const/16 v240, -0x1

    const v241, -0x10001

    const v242, 0x3ffff

    const/16 v243, 0x0

    .line 748
    invoke-static/range {v124 .. v243}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Lcom/iMe/fork/enums/FormattingPanelType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/Set;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v1

    move-object v3, v1

    goto :goto_7

    :cond_9
    move-object/from16 v3, v124

    :cond_a
    :goto_7
    const/4 v1, 0x1

    const/16 v123, 0x0

    goto/16 :goto_17

    .line 727
    :pswitch_4
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 728
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ARCHIVE_MENTIONED_CHATS"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v123, v4

    :cond_c
    move-object/from16 v2, v123

    check-cast v2, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    if-nez v2, :cond_d

    goto :goto_7

    .line 1855
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 731
    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    invoke-virtual {v2}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v7

    if-le v6, v7, :cond_e

    .line 732
    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    goto :goto_8

    .line 735
    :cond_f
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 725
    :pswitch_5
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "SAVE_AS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 724
    :pswitch_6
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "COPY_IMAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 698
    :pswitch_7
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 699
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_10

    goto/16 :goto_7

    .line 700
    :cond_10
    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 701
    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_14

    .line 702
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v8}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_a

    :cond_12
    move-object/from16 v7, v123

    :goto_a
    check-cast v7, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_13

    goto :goto_b

    .line 704
    :cond_13
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_9

    :cond_14
    :goto_b
    const/4 v6, 0x1

    goto :goto_9

    :cond_15
    const/4 v6, 0x1

    .line 709
    new-instance v2, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    .line 707
    invoke-interface {v4, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 711
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    .line 13579
    array-length v5, v2

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_a

    aget-object v6, v2, v7

    .line 712
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1b

    .line 714
    sget-object v8, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    .line 715
    invoke-virtual {v8}, Lcom/iMe/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v8

    .line 1963
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1964
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_16

    move-object/from16 v11, v123

    goto :goto_d

    .line 1965
    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1966
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_d

    .line 1967
    :cond_17
    move-object v12, v11

    check-cast v12, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 716
    invoke-virtual {v12}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v12

    .line 1969
    :cond_18
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1970
    move-object v14, v13

    check-cast v14, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 716
    invoke-virtual {v14}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v14

    if-ge v12, v14, :cond_19

    move-object v11, v13

    move v12, v14

    .line 1975
    :cond_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_18

    .line 716
    :goto_d
    check-cast v11, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    .line 713
    :goto_e
    new-instance v11, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-direct {v11, v9, v8, v10}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    .line 712
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 696
    :pswitch_8
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "CATALOG"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 671
    :pswitch_9
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 672
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1c

    goto/16 :goto_7

    .line 674
    :cond_1c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->SEARCH:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_f

    :cond_1e
    move-object/from16 v4, v123

    :goto_f
    check-cast v4, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v2

    .line 676
    sget-object v4, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v4

    .line 1855
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 677
    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_22

    .line 678
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v8}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_11

    :cond_20
    move-object/from16 v7, v123

    :goto_11
    check-cast v7, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_21

    goto :goto_12

    .line 680
    :cond_21
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    if-lt v5, v2, :cond_22

    .line 681
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_10

    :cond_22
    :goto_12
    const/4 v6, 0x1

    goto :goto_10

    :cond_23
    const/4 v6, 0x1

    .line 686
    new-instance v4, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 687
    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 686
    invoke-direct {v4, v5, v6, v2}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    .line 685
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_a

    new-instance v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$lambda$26$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$lambda$26$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_7

    .line 659
    :pswitch_a
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;->INSTANCE:Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;

    new-instance v4, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    goto/16 :goto_7

    :pswitch_b
    move v2, v15

    .line 643
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    .line 1856
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_13

    .line 1855
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 644
    invoke-virtual {v0}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getFabDataBackup()Lcom/iMe/fork/models/backup/FabDataBackup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v123

    :cond_25
    :goto_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    .line 651
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v1

    const-string v15, "fab_multi"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 652
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabMultiFabs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1549
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 652
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 652
    :cond_26
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v80, v1

    const/4 v1, 0x1

    const/16 v123, 0x0

    goto :goto_15

    :cond_27
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 654
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v15

    const/16 v123, 0x0

    aput-object v15, v2, v123

    invoke-static {v2}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v80, v2

    :goto_15
    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, -0x1

    const/16 v119, -0x1

    const/16 v120, -0x1001

    const v121, 0x3ffff

    const/16 v122, 0x0

    const/4 v2, 0x0

    move-object v15, v2

    .line 650
    invoke-static/range {v3 .. v122}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Lcom/iMe/fork/enums/FormattingPanelType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/Set;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v2

    .line 657
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v3, v2

    goto :goto_17

    :pswitch_c
    move/from16 v123, v1

    move v1, v2

    .line 638
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/models/backup/TopicBackup;

    .line 639
    invoke-virtual {v4}, Lcom/iMe/fork/models/backup/TopicBackup;->getTopicId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/iMe/storage/data/repository/topics/Topic;->valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/fork/models/backup/TopicBackup;->setIcon(Lcom/iMe/storage/data/repository/topics/Topic;)V

    goto :goto_16

    .line 1856
    :cond_28
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_29
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move/from16 v1, v123

    goto/16 :goto_1

    :cond_2a
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final migrateToCurrentVersion$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final needSkipAutoBackup()Z
    .locals 6

    .line 621
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/Interval;->getDays()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 622
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final restore$lambda$16(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backupMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$components"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parentFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    .line 311
    new-instance v1, Ljava/io/FileReader;

    .line 312
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 315
    invoke-direct {p0}, Lcom/iMe/fork/controller/BackupController;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v1, Lcom/iMe/fork/models/backup/Backup;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(reader, Backup::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/models/backup/Backup;

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/BackupController;->migrateToCurrentVersion(Lcom/iMe/fork/models/backup/Backup;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object p1

    .line 317
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/BackupController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 318
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 319
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FormattingTextController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 320
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 321
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilesSendingPreviewAndCaptionEnabled(Z)V

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    sget-object v0, Lcom/iMe/fork/enums/StickersSize;->Companion:Lcom/iMe/fork/enums/StickersSize$Companion;

    .line 331
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/StickersSize$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/StickersSize;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedStickersSize(Lcom/iMe/fork/enums/StickersSize;)V

    .line 335
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonVisible()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    .line 338
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 339
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 343
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 344
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProfileInfoHidden(Z)V

    .line 346
    :cond_5
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 348
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 347
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiForwardingOptionsHintShown(Z)V

    .line 351
    :cond_6
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSuggestPremiumReactionsEmoji(Z)V

    .line 1855
    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/enums/BackupComponent;

    .line 356
    sget-object v1, Lcom/iMe/fork/controller/BackupController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 600
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 599
    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 598
    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 581
    :pswitch_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/TemplatesController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 582
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 584
    sget-object v0, Lcom/iMe/fork/enums/TemplatesMode;->Companion:Lcom/iMe/fork/enums/TemplatesMode$Companion;

    .line 585
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/TemplatesMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesMode;

    move-result-object v0

    .line 583
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesMode(Lcom/iMe/fork/enums/TemplatesMode;)V

    .line 589
    :cond_9
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 591
    sget-object v0, Lcom/iMe/fork/enums/TemplatesSortingType;->Companion:Lcom/iMe/fork/enums/TemplatesSortingType$Companion;

    .line 592
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/TemplatesSortingType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lcom/iMe/fork/enums/TemplatesSortingType;)V

    goto :goto_0

    .line 579
    :pswitch_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 578
    :pswitch_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/DialogTranslationController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 561
    :pswitch_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/MusicController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 562
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 563
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 565
    :cond_a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 566
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerMinimized(Z)V

    .line 568
    :cond_b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 570
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 569
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerNightThemeEnabled(Z)V

    .line 573
    :cond_c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 574
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_0

    .line 546
    :pswitch_7
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/AlbumsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 547
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 548
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    .line 550
    :cond_d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 551
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 553
    :cond_e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 555
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 554
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSortCloudAlbumsByNameEnabled(Z)V

    goto/16 :goto_0

    .line 532
    :pswitch_8
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FiltersController;->restoreAllChatsTabBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 534
    invoke-virtual {v0, v1, p1, p3}, Lcom/iMe/fork/controller/FiltersController;->restoreSortingBackup(ZLcom/iMe/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1, p1, p3}, Lcom/iMe/fork/controller/FiltersController;->restoreSortingBackup(ZLcom/iMe/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 536
    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 538
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 540
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 539
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatSortingEnabledByDefault(Z)V

    goto/16 :goto_0

    .line 508
    :pswitch_9
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FiltersController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 509
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 510
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilterTabsAtBottomEnabled(Z)V

    .line 512
    :cond_f
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 514
    sget-object v0, Lcom/iMe/fork/enums/FilterTabNotificationMode;->Companion:Lcom/iMe/fork/enums/FilterTabNotificationMode$Companion;

    .line 515
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/FilterTabNotificationMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsNotificationMode(Lcom/iMe/fork/enums/FilterTabNotificationMode;)V

    .line 519
    :cond_10
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 521
    sget-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->Companion:Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

    .line 522
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsWidthMode(Lcom/iMe/fork/enums/FilterTabWidthMode;)V

    .line 526
    :cond_11
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 527
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRememberLastFilterTabEnabled(Z)V

    goto/16 :goto_0

    .line 506
    :pswitch_a
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/MultiPanelController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 358
    :pswitch_b
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ToolsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 359
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ChatProfileController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 360
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 361
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHeaderSettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V

    .line 363
    :cond_12
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 365
    sget-object v0, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;

    .line 366
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v2

    .line 365
    invoke-virtual {v0, v2}, Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 370
    :cond_13
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 372
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 371
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 375
    :cond_14
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 376
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 378
    :cond_15
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 379
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    .line 381
    :cond_16
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 383
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 382
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDialogsCompactModeEnabled(Z)V

    .line 385
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 386
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setUseThreeLinesLayout(Z)V

    .line 389
    :cond_17
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 391
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    .line 394
    :cond_18
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 395
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    .line 397
    :cond_19
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 399
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 398
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerEnabled(Z)V

    .line 402
    :cond_1a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 404
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 403
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerByTapEnabled(Z)V

    .line 407
    :cond_1b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 409
    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    .line 410
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V

    .line 414
    :cond_1c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 415
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    .line 417
    :cond_1d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 419
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 418
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    .line 422
    :cond_1e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 424
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 423
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 427
    :cond_1f
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 429
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 428
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    .line 432
    :cond_20
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 433
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    .line 435
    :cond_21
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 437
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 436
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    .line 440
    :cond_22
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 442
    sget-object v0, Lcom/iMe/fork/enums/VideoVoiceCamera;->Companion:Lcom/iMe/fork/enums/VideoVoiceCamera$Companion;

    .line 443
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/VideoVoiceCamera$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/VideoVoiceCamera;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedVideoVoiceCamera(Lcom/iMe/fork/enums/VideoVoiceCamera;)V

    .line 447
    :cond_23
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 449
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 448
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    .line 452
    :cond_24
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 453
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    .line 455
    :cond_25
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 457
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMessageQuickTranslateEnabled(Z)V

    .line 460
    :cond_26
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 461
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setBotHelpTranslateEnabled(Z)V

    .line 463
    :cond_27
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 465
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 464
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setTranslateInSendPopupEnabled(Z)V

    .line 468
    :cond_28
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 469
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCombineMessagesEnabled(Z)V

    .line 471
    :cond_29
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 473
    sget-object v0, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->Companion:Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;

    .line 474
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    .line 478
    :cond_2a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 479
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsEnabled(Z)V

    .line 481
    :cond_2b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 483
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    .line 484
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDialogTypesForMessagePopupReactions(Ljava/util/Set;)V

    .line 488
    :cond_2c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 490
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 489
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    .line 493
    :cond_2d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 495
    sget-object v0, Lcom/iMe/fork/enums/DrawerHolidayIconType;->Companion:Lcom/iMe/fork/enums/DrawerHolidayIconType$Companion;

    .line 496
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DrawerHolidayIconType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lcom/iMe/fork/enums/DrawerHolidayIconType;)V

    .line 500
    :cond_2e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 501
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v0

    .line 502
    sget-object v1, Lcom/iMe/fork/enums/FormattingPanelType;->Companion:Lcom/iMe/fork/enums/FormattingPanelType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/enums/FormattingPanelType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FormattingTextController;->setFormattingPanelType(Lcom/iMe/fork/enums/FormattingPanelType;)V

    goto/16 :goto_0

    .line 603
    :cond_2f
    new-instance p1, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 608
    new-instance p1, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final restore$lambda$16$lambda$14(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 605
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final restore$lambda$16$lambda$15(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 610
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final backup(Z)V
    .locals 184

    move-object/from16 v1, p0

    if-eqz p1, :cond_1

    .line 130
    iget-boolean v0, v1, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->needSkipAutoBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    iget-object v2, v2, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 137
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    .line 138
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    .line 139
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v4

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v6

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v7

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v9

    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v10

    .line 145
    sget-boolean v11, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    .line 147
    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    .line 148
    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    .line 149
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    .line 150
    sget-boolean v16, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    .line 152
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :try_start_1
    sget-object v1, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;

    move-object/from16 v17, v15

    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    move-object/from16 v18, v8

    const-string v8, "selectedDrawerItems"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v21

    .line 154
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 155
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 156
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 157
    sget-boolean v19, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v22

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v23

    move-object/from16 v24, v5

    .line 160
    sget-object v5, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v25

    move/from16 v26, v15

    invoke-virtual/range {v25 .. v25}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v28

    .line 161
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result v15

    .line 162
    sget-boolean v25, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 163
    sget-boolean v27, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/iMe/fork/controller/ToolsController;->getChatAttachAlertButtonsBackupData()Ljava/util/Map;

    move-result-object v32

    .line 165
    sget-boolean v29, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 166
    sget-boolean v30, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    move/from16 v31, v15

    .line 167
    sget-object v15, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    move/from16 v33, v8

    .line 168
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    move/from16 v34, v1

    const-string v1, "selectedExtendedAvatarPreviewerItems"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v15, v8}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v35

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ToolsController;->getMessagePopupItemBackupData()Ljava/util/List;

    move-result-object v36

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result v8

    .line 173
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 174
    sget-boolean v37, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 175
    sget-boolean v38, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 176
    sget-boolean v39, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 177
    sget-boolean v40, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 178
    sget-boolean v41, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 179
    sget-object v42, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v45

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v42

    .line 181
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result v43

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v44

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v46

    .line 185
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/iMe/fork/controller/MultiPanelController;->getBackupData()Ljava/util/Map;

    move-result-object v69

    .line 187
    sget-boolean v47, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 188
    sget-boolean v48, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v52

    .line 190
    sget-boolean v49, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 191
    sget-boolean v50, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 192
    sget-boolean v51, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v53

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v57

    .line 195
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result v54

    .line 196
    sget-boolean v55, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    move/from16 v56, v15

    .line 197
    sget-object v15, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->Companion:Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;

    move/from16 v58, v8

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    move/from16 v59, v1

    const-string v1, "selectedPhotoViewerMenuItems"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v60

    .line 198
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    .line 200
    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    const-string v15, "selectedDialogTypesForMessagePopupReactions"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, v8}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v62

    .line 202
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 204
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    .line 205
    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v71

    .line 206
    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v72

    .line 207
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    .line 208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v61

    .line 209
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v63

    .line 210
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/iMe/fork/controller/FiltersController;->getFiltersBackupData()Ljava/util/List;

    move-result-object v76

    .line 212
    sget-boolean v64, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    .line 213
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v65

    .line 214
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v66

    move/from16 v67, v15

    .line 215
    sget-object v15, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v68

    move/from16 v70, v8

    invoke-virtual/range {v68 .. v68}, Lcom/iMe/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v80

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v8

    move/from16 v68, v8

    .line 217
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v82

    .line 218
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v8

    move/from16 v74, v8

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v84

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v85

    .line 221
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v8

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/iMe/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v86

    .line 223
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 224
    sget-boolean v75, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    .line 225
    sget-boolean v77, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    .line 226
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Lcom/iMe/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result v78

    .line 227
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Lcom/iMe/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v91

    .line 229
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Lcom/iMe/fork/controller/DialogTranslationController;->getBackupData()Ljava/util/List;

    move-result-object v92

    .line 231
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result v79

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled()Z

    move-result v81

    .line 233
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled()Z

    move-result v83

    .line 234
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result v87

    .line 236
    sget-boolean v88, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    .line 237
    sget-boolean v89, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    .line 238
    sget-boolean v90, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    .line 239
    sget-boolean v93, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v94

    invoke-virtual/range {v94 .. v94}, Lcom/iMe/fork/controller/MusicController;->getSelectedMusicTab()Lcom/iMe/ui/music/MusicTab;

    move-result-object v94

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v101

    .line 241
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v94

    invoke-virtual/range {v94 .. v94}, Lcom/iMe/fork/controller/MusicController;->getPlaylists()Ljava/util/Map;

    move-result-object v102

    .line 243
    sget-object v94, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v103

    .line 244
    sget-object v94, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v104

    .line 245
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v94

    invoke-virtual/range {v94 .. v94}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v94

    .line 246
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesBackupData()Ljava/util/List;

    move-result-object v106

    .line 248
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v96

    .line 249
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v97

    invoke-virtual/range {v97 .. v97}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v97

    .line 250
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v98

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v99

    invoke-virtual/range {v99 .. v99}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicsBackupData()Ljava/util/List;

    move-result-object v110

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v99

    invoke-virtual/range {v99 .. v99}, Lcom/iMe/fork/controller/HiddenChatsController;->getHiddenChatDialogs()Ljava/util/List;

    move-result-object v114

    .line 257
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v99

    invoke-virtual/range {v99 .. v99}, Lcom/iMe/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v99

    invoke-static/range {v99 .. v99}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v99

    .line 766
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface/range {v99 .. v99}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v99

    :goto_0
    invoke-interface/range {v99 .. v99}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_3

    move/from16 v105, v8

    invoke-interface/range {v99 .. v99}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v107, v8

    check-cast v107, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 258
    invoke-virtual/range {v107 .. v107}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v107

    if-eqz v107, :cond_2

    .line 857
    invoke-interface {v15, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move/from16 v8, v105

    goto :goto_0

    :cond_3
    move/from16 v105, v8

    .line 1054
    new-instance v8, Lcom/iMe/fork/controller/BackupController$backup$$inlined$sortedByDescending$1;

    invoke-direct {v8}, Lcom/iMe/fork/controller/BackupController$backup$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v15, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v8

    .line 258
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v115

    .line 260
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result v8

    .line 261
    sget-object v15, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v99

    move/from16 v107, v8

    invoke-virtual/range {v99 .. v99}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v8

    .line 261
    invoke-virtual {v15, v8}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v117

    .line 265
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v99

    .line 134
    new-instance v15, Lcom/iMe/fork/models/backup/Backup;

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 140
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v108

    .line 141
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v109

    .line 142
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v111

    .line 143
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v112

    .line 144
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v113

    .line 145
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v116

    .line 147
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v123

    .line 148
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v124

    .line 149
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v125

    .line 150
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v126

    .line 154
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .line 155
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 156
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 157
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v127

    .line 158
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v128

    .line 159
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v129

    .line 161
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 162
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v130

    .line 163
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v131

    .line 165
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v132

    .line 166
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v133

    .line 171
    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    .line 172
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    .line 173
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    .line 174
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v134

    .line 175
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v135

    .line 176
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v136

    .line 177
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v137

    .line 178
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v138

    .line 180
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v139

    const/16 v140, 0x0

    .line 181
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v141

    const/16 v142, 0x0

    .line 187
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v143

    .line 188
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v144

    .line 190
    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v145

    .line 191
    invoke-static/range {v50 .. v50}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v146

    .line 192
    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v147

    .line 193
    invoke-static/range {v53 .. v53}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v148

    .line 195
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v149

    .line 196
    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v150

    .line 198
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 202
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v151

    const/16 v152, 0x0

    const/16 v153, 0x0

    .line 183
    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v154

    .line 184
    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v155

    .line 204
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v70

    .line 207
    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v156

    .line 208
    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v157

    .line 209
    invoke-static/range {v63 .. v63}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v158

    .line 212
    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v159

    .line 213
    invoke-static/range {v65 .. v65}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v160

    .line 214
    invoke-static/range {v66 .. v66}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v161

    .line 216
    invoke-static/range {v68 .. v68}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v162

    .line 218
    invoke-static/range {v74 .. v74}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v163

    .line 223
    invoke-static/range {v105 .. v105}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v105

    .line 224
    invoke-static/range {v75 .. v75}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v164

    .line 225
    invoke-static/range {v77 .. v77}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v165

    .line 226
    invoke-static/range {v78 .. v78}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v166

    .line 231
    invoke-static/range {v79 .. v79}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v167

    .line 232
    invoke-static/range {v81 .. v81}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v168

    .line 233
    invoke-static/range {v83 .. v83}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v169

    .line 234
    invoke-static/range {v87 .. v87}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v170

    .line 236
    invoke-static/range {v88 .. v88}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v171

    .line 237
    invoke-static/range {v89 .. v89}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v172

    .line 238
    invoke-static/range {v90 .. v90}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v173

    .line 239
    invoke-static/range {v93 .. v93}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v174

    .line 245
    invoke-static/range {v94 .. v95}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v175

    .line 248
    invoke-static/range {v96 .. v96}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v176

    .line 249
    invoke-static/range {v97 .. v97}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v177

    .line 250
    invoke-static/range {v98 .. v98}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v178

    const/16 v3, 0xe

    .line 253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v179

    const/16 v180, 0x0

    const/16 v181, 0x0

    .line 260
    invoke-static/range {v107 .. v107}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v182

    const/16 v118, 0x0

    const v119, 0x30002800

    const/16 v120, 0x0

    const/16 v121, 0x3000

    const/16 v122, 0x0

    move-object v3, v15

    move-object v4, v0

    move-object/from16 v5, v24

    move-object v6, v2

    move-object v7, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v108

    move-object/from16 v10, v109

    move-object/from16 v11, v111

    move-object/from16 v12, v112

    move-object/from16 v13, v113

    move-object/from16 v14, v116

    move-object v0, v15

    const/4 v2, 0x1

    const/16 v183, 0x0

    move-object/from16 v15, v17

    move-object/from16 v16, v123

    move-object/from16 v17, v124

    move-object/from16 v18, v125

    move-object/from16 v19, v126

    move-object/from16 v22, v34

    move-object/from16 v23, v33

    move-object/from16 v24, v26

    move-object/from16 v25, v127

    move-object/from16 v26, v128

    move-object/from16 v27, v129

    move-object/from16 v29, v31

    move-object/from16 v30, v130

    move-object/from16 v31, v131

    move-object/from16 v33, v132

    move-object/from16 v34, v133

    move-object/from16 v37, v59

    move-object/from16 v38, v58

    move-object/from16 v39, v56

    move-object/from16 v40, v134

    move-object/from16 v41, v135

    move-object/from16 v42, v136

    move-object/from16 v43, v137

    move-object/from16 v44, v138

    move-object/from16 v46, v139

    move-object/from16 v47, v140

    move-object/from16 v48, v141

    move-object/from16 v49, v142

    move-object/from16 v50, v143

    move-object/from16 v51, v144

    move-object/from16 v53, v145

    move-object/from16 v54, v146

    move-object/from16 v55, v147

    move-object/from16 v56, v148

    move-object/from16 v58, v149

    move-object/from16 v59, v150

    move-object/from16 v61, v1

    move-object/from16 v63, v151

    move-object/from16 v64, v152

    move-object/from16 v65, v153

    move-object/from16 v66, v99

    move-object/from16 v67, v154

    move-object/from16 v68, v155

    move-object/from16 v73, v156

    move-object/from16 v74, v157

    move-object/from16 v75, v158

    move-object/from16 v77, v159

    move-object/from16 v78, v160

    move-object/from16 v79, v161

    move-object/from16 v81, v162

    move-object/from16 v83, v163

    move-object/from16 v87, v105

    move-object/from16 v88, v164

    move-object/from16 v89, v165

    move-object/from16 v90, v166

    move-object/from16 v93, v167

    move-object/from16 v94, v168

    move-object/from16 v95, v169

    move-object/from16 v96, v170

    move-object/from16 v97, v171

    move-object/from16 v98, v172

    move-object/from16 v99, v173

    move-object/from16 v100, v174

    move-object/from16 v105, v175

    move-object/from16 v107, v176

    move-object/from16 v108, v177

    move-object/from16 v109, v178

    move-object/from16 v111, v179

    move-object/from16 v112, v180

    move-object/from16 v113, v181

    move-object/from16 v116, v182

    .line 134
    invoke-direct/range {v3 .. v122}, Lcom/iMe/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Lcom/iMe/fork/enums/FormattingPanelType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/Set;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 267
    new-instance v1, Ljava/io/File;

    .line 268
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    .line 269
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, p0

    :try_start_2
    invoke-direct {v6, v4, v5}, Lcom/iMe/fork/controller/BackupController;->buildBackupFileName(J)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 274
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    new-array v0, v2, [Ljava/lang/String;

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v183

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    new-array v0, v2, [Ljava/lang/String;

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v183

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v13, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    .line 275
    invoke-static/range {v7 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->resetLastAutoBackupTime()V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v1

    .line 298
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 69
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    return-object v0
.end method

.method public final isAutoBackupEnabled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result v1

    .line 84
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 88
    sget-object v0, Lcom/iMe/fork/enums/Interval;->Companion:Lcom/iMe/fork/enums/Interval$Companion;

    .line 90
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/iMe/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/fork/enums/Interval;)Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 95
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v1

    .line 94
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public final resetLastAutoBackupTime()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public final restore(Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/fork/enums/BackupComponent;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backupMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 2

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/iMe/fork/enums/Interval;->Companion:Lcom/iMe/fork/enums/Interval$Companion;

    .line 118
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v1

    .line 117
    invoke-virtual {v0, p1, v1}, Lcom/iMe/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/fork/enums/Interval;)Lcom/iMe/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoBackupEnabled(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return-void
.end method

.method public final setSelectedAutoBackupInterval(Lcom/iMe/fork/enums/Interval;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    return-void
.end method
