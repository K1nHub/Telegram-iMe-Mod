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
    value = "SMAP\nBackupController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,567:1\n56#2,6:568\n1855#3,2:574\n1855#3,2:576\n1549#3:578\n1620#3,3:579\n1855#3,2:583\n1002#3,2:585\n1855#3,2:587\n1963#3,14:590\n1855#3,2:605\n1045#3:607\n1559#3:608\n1590#3,4:609\n1045#3:613\n1559#3:614\n1590#3,4:615\n1855#3,2:619\n1#4:582\n13579#5:589\n13580#5:604\n*S KotlinDebug\n*F\n+ 1 BackupController.kt\ncom/iMe/fork/controller/BackupController\n*L\n35#1:568,6\n453#1:574,2\n457#1:576,2\n465#1:578\n465#1:579,3\n486#1:583,2\n496#1:585,2\n503#1:587,2\n512#1:590,14\n523#1:605,2\n534#1:607\n535#1:608\n535#1:609,4\n541#1:613\n542#1:614\n542#1:615,4\n244#1:619,2\n511#1:589\n511#1:604\n*E\n"
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
.method public static synthetic $r8$lambda$CFDF5dUXGqLbLOIVpo4OJZLEpS4(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$15$lambda$13(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HRYPNMDzUSfQTPqbBbIp6VMTOBA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->migrateToCurrentVersion$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NDJI15_k18viPhP3YGdWGqRyc3Y(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$15(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5Xy5dwrJioD9wL_VPSSCTBtQ5M(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/BackupController;->restore$lambda$15$lambda$14(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/BackupController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/BackupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/BackupController;->Companion:Lcom/iMe/fork/controller/BackupController$Companion;

    .line 557
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 32
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

    .line 35
    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->gson$delegate:Lkotlin/Lazy;

    .line 38
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 39
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 40
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 32
    sget-object v0, Lcom/iMe/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final buildBackupFileName(J)Ljava/lang/String;
    .locals 3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMeBackup_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    sget-object v1, Lcom/iMe/common/Constants;->INSTANCE:Lcom/iMe/common/Constants;

    invoke-virtual {v1}, Lcom/iMe/common/Constants;->getDateDotsFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 441
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

    .line 35
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
    .locals 234

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/fork/models/backup/Backup;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    move-object/from16 v3, p1

    :goto_1
    const/16 v4, 0xd

    if-ge v0, v4, :cond_29

    const/16 v15, 0xa

    const/16 v118, 0x0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    goto/16 :goto_7

    .line 532
    :pswitch_0
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

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

    .line 533
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1045
    new-instance v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1559
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v82

    if-eqz v82, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v82

    add-int/lit8 v83, v14, 0x1

    if-gez v14, :cond_1

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    move-object/from16 v15, v82

    check-cast v15, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 535
    invoke-virtual {v15, v14}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    .line 1592
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v14, v83

    const/16 v15, 0xa

    goto :goto_2

    .line 536
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object/from16 v1, v118

    :goto_3
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

    const/16 v113, -0x1

    const/16 v114, -0x1

    const/16 v115, -0x2001

    const/16 v116, 0x1fff

    const/16 v117, 0x0

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

    move-object/from16 v81, v1

    .line 533
    invoke-static/range {v3 .. v117}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v3

    goto :goto_4

    :cond_4
    move v2, v15

    :goto_4
    move-object/from16 v119, v3

    .line 539
    invoke-virtual/range {v119 .. v119}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

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

    .line 540
    invoke-virtual/range {v119 .. v119}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1045
    new-instance v3, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;

    invoke-direct {v3}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1559
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_5

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v4, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 542
    invoke-virtual {v4, v2}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    .line 1592
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_5

    .line 543
    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v118

    :cond_7
    move-object/from16 v199, v118

    const/16 v200, 0x0

    const/16 v201, 0x0

    const/16 v202, 0x0

    const/16 v203, 0x0

    const/16 v204, 0x0

    const/16 v205, 0x0

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

    const/16 v229, -0x1

    const/16 v230, -0x1

    const v231, -0x8001

    const/16 v232, 0x1fff

    const/16 v233, 0x0

    .line 540
    invoke-static/range {v119 .. v233}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v1

    move-object v3, v1

    goto :goto_6

    :cond_8
    move-object/from16 v3, v119

    :cond_9
    :goto_6
    const/4 v1, 0x1

    :goto_7
    const/16 v118, 0x0

    goto/16 :goto_17

    .line 520
    :pswitch_1
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 521
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ARCHIVE_MENTIONED_CHATS"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v118, v4

    :cond_b
    move-object/from16 v2, v118

    check-cast v2, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    if-nez v2, :cond_c

    goto :goto_6

    .line 1855
    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 524
    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    invoke-virtual {v2}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v7

    if-le v6, v7, :cond_d

    .line 525
    invoke-virtual {v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    goto :goto_8

    .line 528
    :cond_e
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 518
    :pswitch_2
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "SAVE_AS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 517
    :pswitch_3
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "COPY_IMAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 501
    :pswitch_4
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 502
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_f

    goto/16 :goto_6

    .line 503
    :cond_f
    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 504
    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_13

    .line 505
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

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

    if-eqz v8, :cond_10

    goto :goto_a

    :cond_11
    move-object/from16 v7, v118

    :goto_a
    check-cast v7, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_12

    goto :goto_b

    .line 507
    :cond_12
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_9

    :cond_13
    :goto_b
    const/4 v6, 0x1

    goto :goto_9

    :cond_14
    const/4 v6, 0x1

    .line 510
    new-instance v2, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v4, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    .line 13579
    array-length v5, v2

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_9

    aget-object v6, v2, v7

    .line 512
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1a

    sget-object v8, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/iMe/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v8

    .line 1963
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1964
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_15

    move-object/from16 v11, v118

    goto :goto_d

    .line 1965
    :cond_15
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1966
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_d

    .line 1967
    :cond_16
    move-object v12, v11

    check-cast v12, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 512
    invoke-virtual {v12}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v12

    .line 1969
    :cond_17
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1970
    move-object v14, v13

    check-cast v14, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 512
    invoke-virtual {v14}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v14

    if-ge v12, v14, :cond_18

    move-object v11, v13

    move v12, v14

    .line 1975
    :cond_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_17

    .line 512
    :goto_d
    check-cast v11, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    :goto_e
    new-instance v11, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-direct {v11, v9, v8, v10}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 499
    :pswitch_5
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "CATALOG"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 482
    :pswitch_6
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 483
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1b

    goto/16 :goto_6

    .line 484
    :cond_1b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

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

    if-eqz v5, :cond_1c

    goto :goto_f

    :cond_1d
    move-object/from16 v4, v118

    :goto_f
    check-cast v4, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v2

    .line 486
    sget-object v4, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v4

    .line 1855
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 487
    sget-object v6, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_21

    .line 488
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

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

    if-eqz v8, :cond_1e

    goto :goto_11

    :cond_1f
    move-object/from16 v7, v118

    :goto_11
    check-cast v7, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_20

    goto :goto_12

    .line 490
    :cond_20
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    if-lt v5, v2, :cond_21

    .line 491
    invoke-virtual {v7}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_10

    :cond_21
    :goto_12
    const/4 v6, 0x1

    goto :goto_10

    :cond_22
    const/4 v6, 0x1

    .line 495
    new-instance v4, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    sget-object v5, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6, v2}, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_9

    new-instance v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$lambda$25$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$lambda$25$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_6

    .line 471
    :pswitch_7
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v2, Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;->INSTANCE:Lcom/iMe/fork/controller/BackupController$migrateToCurrentVersion$3;

    new-instance v4, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    goto/16 :goto_6

    .line 470
    :pswitch_8
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "MANAGEMENT"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_9
    move v2, v15

    .line 457
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1856
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_13

    .line 1855
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 458
    invoke-virtual {v0}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->getFabDataBackup()Lcom/iMe/fork/models/backup/FabDataBackup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v118

    :cond_24
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

    .line 464
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v1

    const-string v15, "fab_multi"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 465
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

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 465
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v15, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 465
    :cond_25
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v79, v1

    const/4 v1, 0x1

    const/16 v118, 0x0

    goto :goto_15

    :cond_26
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 467
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v15

    const/16 v118, 0x0

    aput-object v15, v2, v118

    invoke-static {v2}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v79, v2

    :goto_15
    const/16 v80, 0x0

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

    const/16 v113, -0x1

    const/16 v114, -0x1

    const/16 v115, -0x801

    const/16 v116, 0x1fff

    const/16 v117, 0x0

    const/4 v2, 0x0

    move-object v15, v2

    .line 464
    invoke-static/range {v3 .. v117}, Lcom/iMe/fork/models/backup/Backup;->copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v2

    .line 469
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v3, v2

    goto :goto_17

    :pswitch_a
    move v1, v2

    const/16 v118, 0x0

    .line 453
    invoke-virtual {v3}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/models/backup/TopicBackup;

    .line 454
    invoke-virtual {v4}, Lcom/iMe/fork/models/backup/TopicBackup;->getTopicId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/iMe/storage/data/repository/topics/Topic;->valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/fork/models/backup/TopicBackup;->setIcon(Lcom/iMe/storage/data/repository/topics/Topic;)V

    goto :goto_16

    .line 1856
    :cond_27
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_28
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_29
    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
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

.method private static final migrateToCurrentVersion$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final needSkipAutoBackup()Z
    .locals 6

    .line 436
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/Interval;->getDays()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 437
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

.method private static final restore$lambda$15(Lcom/iMe/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
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

    .line 214
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 215
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

    .line 217
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/BackupController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 218
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 219
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilesSendingPreviewAndCaptionEnabled(Z)V

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    sget-object v0, Lcom/iMe/fork/enums/StickersSize;->Companion:Lcom/iMe/fork/enums/StickersSize$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/StickersSize$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/StickersSize;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedStickersSize(Lcom/iMe/fork/enums/StickersSize;)V

    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonForceVisible(Z)V

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 234
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 235
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProfileInfoHidden(Z)V

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 238
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiForwardingOptionsHintShown(Z)V

    .line 240
    :cond_6
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 241
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

    .line 245
    sget-object v1, Lcom/iMe/fork/controller/BackupController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 407
    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/TemplatesController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 408
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 409
    sget-object v0, Lcom/iMe/fork/enums/TemplatesMode;->Companion:Lcom/iMe/fork/enums/TemplatesMode$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/TemplatesMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesMode(Lcom/iMe/fork/enums/TemplatesMode;)V

    .line 411
    :cond_9
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 412
    sget-object v0, Lcom/iMe/fork/enums/TemplatesSortingType;->Companion:Lcom/iMe/fork/enums/TemplatesSortingType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/TemplatesSortingType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lcom/iMe/fork/enums/TemplatesSortingType;)V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/DialogTranslationController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto :goto_0

    .line 388
    :pswitch_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/MusicController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 389
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 392
    :cond_a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 393
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerMinimized(Z)V

    .line 395
    :cond_b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 396
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerThemeOverridden(Z)V

    .line 398
    :cond_c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 399
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerNightThemeEnabled(Z)V

    .line 401
    :cond_d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 402
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_0

    .line 386
    :pswitch_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/BookmarksController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 375
    :pswitch_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/AlbumsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 376
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 377
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    .line 379
    :cond_e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 380
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 382
    :cond_f
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 383
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSortCloudAlbumsByNameEnabled(Z)V

    goto/16 :goto_0

    .line 364
    :pswitch_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FiltersController;->restoreAllChatsTabBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 366
    invoke-virtual {v0, v1, p1, p3}, Lcom/iMe/fork/controller/FiltersController;->restoreSortingBackup(ZLcom/iMe/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, v1, p1, p3}, Lcom/iMe/fork/controller/FiltersController;->restoreSortingBackup(ZLcom/iMe/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 368
    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 370
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 371
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatSortingEnabledByDefault(Z)V

    goto/16 :goto_0

    .line 349
    :pswitch_7
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FiltersController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 350
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 351
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilterTabsAtBottomEnabled(Z)V

    .line 353
    :cond_10
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 354
    sget-object v0, Lcom/iMe/fork/enums/FilterTabNotificationMode;->Companion:Lcom/iMe/fork/enums/FilterTabNotificationMode$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/FilterTabNotificationMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsNotificationMode(Lcom/iMe/fork/enums/FilterTabNotificationMode;)V

    .line 356
    :cond_11
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 357
    sget-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->Companion:Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsWidthMode(Lcom/iMe/fork/enums/FilterTabWidthMode;)V

    .line 359
    :cond_12
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 360
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRememberLastFilterTabEnabled(Z)V

    goto/16 :goto_0

    .line 306
    :pswitch_8
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ToolsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 307
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 308
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 309
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    .line 311
    :cond_13
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 312
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCustomSharingModeEnabled(Z)V

    .line 314
    :cond_14
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 315
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    .line 317
    :cond_15
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 318
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedChatProfileTelegramIdMode(Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;)V

    .line 320
    :cond_16
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 321
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMessageQuickTranslateEnabled(Z)V

    .line 323
    :cond_17
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 324
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setBotHelpTranslateEnabled(Z)V

    .line 326
    :cond_18
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 327
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setTranslateInSendPopupEnabled(Z)V

    .line 329
    :cond_19
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 330
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCombineMessagesEnabled(Z)V

    .line 332
    :cond_1a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 333
    sget-object v0, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->Companion:Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    .line 335
    :cond_1b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 336
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsEnabled(Z)V

    .line 338
    :cond_1c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 339
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDialogTypesForMessagePopupReactions(Ljava/util/Set;)V

    .line 341
    :cond_1d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 342
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    .line 344
    :cond_1e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 345
    sget-object v0, Lcom/iMe/fork/enums/DrawerHolidayIconType;->Companion:Lcom/iMe/fork/enums/DrawerHolidayIconType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DrawerHolidayIconType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lcom/iMe/fork/enums/DrawerHolidayIconType;)V

    goto/16 :goto_0

    .line 304
    :pswitch_9
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/MultiPanelController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 247
    :pswitch_a
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ToolsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 248
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V

    .line 249
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 250
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHeaderSettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V

    .line 252
    :cond_1f
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 253
    sget-object v0, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 255
    :cond_20
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 256
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 258
    :cond_21
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 259
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 261
    :cond_22
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 262
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDialogsCompactModeEnabled(Z)V

    .line 263
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 264
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setUseThreeLinesLayout(Z)V

    .line 267
    :cond_23
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 268
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    .line 270
    :cond_24
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 271
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    .line 273
    :cond_25
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 274
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerEnabled(Z)V

    .line 276
    :cond_26
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 277
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerByTapEnabled(Z)V

    .line 279
    :cond_27
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 280
    sget-object v0, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V

    .line 282
    :cond_28
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 283
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    .line 285
    :cond_29
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 286
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    .line 288
    :cond_2a
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 289
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 291
    :cond_2b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 292
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    .line 294
    :cond_2c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 295
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    .line 297
    :cond_2d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 298
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    .line 300
    :cond_2e
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 301
    sget-object v0, Lcom/iMe/fork/enums/VideoVoiceCamera;->Companion:Lcom/iMe/fork/enums/VideoVoiceCamera$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/VideoVoiceCamera$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/VideoVoiceCamera;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedVideoVoiceCamera(Lcom/iMe/fork/enums/VideoVoiceCamera;)V

    goto/16 :goto_0

    .line 418
    :cond_2f
    new-instance p1, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 423
    new-instance p1, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4}, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static final restore$lambda$15$lambda$13(Lcom/iMe/fork/controller/BackupController;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 420
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final restore$lambda$15$lambda$14(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 425
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final backup(Z)V
    .locals 119

    move-object/from16 v1, p0

    if-eqz p1, :cond_1

    .line 75
    iget-boolean v0, v1, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->needSkipAutoBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    new-instance v0, Lcom/iMe/fork/models/backup/Backup;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    iget-boolean v2, v2, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    iget-object v2, v2, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 82
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 83
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 84
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 90
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    .line 92
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 93
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 94
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 95
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 97
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v19

    .line 98
    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    move-object/from16 v20, v15

    const-string v15, "selectedDrawerItems"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/iMe/ui/drawer/DrawerSwitchableItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 99
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 100
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 101
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 104
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v26

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 106
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 107
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 108
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/fork/controller/ToolsController;->getChatAttachAlertButtonsBackupData()Ljava/util/Map;

    move-result-object v30

    .line 109
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 110
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 111
    sget-object v15, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    move-object/from16 v33, v1

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    move-object/from16 v34, v14

    const-string v14, "selectedExtendedAvatarPreviewerItems"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->getMessagePopupItemBackupData()Ljava/util/List;

    move-result-object v35

    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 115
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    .line 116
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    .line 117
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    .line 118
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    .line 119
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    .line 120
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    .line 121
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v44

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    const/16 v46, 0x0

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    const/16 v48, 0x0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/MultiPanelController;->getBackupData()Ljava/util/Map;

    move-result-object v51

    .line 129
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v52

    .line 130
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    .line 131
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    .line 132
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v55

    .line 133
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    .line 134
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v57

    .line 135
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v60

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v61

    .line 139
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    .line 140
    sget-object v14, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->Companion:Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;

    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    move-object/from16 v63, v1

    const-string v1, "selectedPhotoViewerMenuItems"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/iMe/fork/enums/PhotoViewerMenuItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 141
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v64

    .line 142
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    const-string v15, "selectedDialogTypesForMessagePopupReactions"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v65

    .line 143
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v66

    const/16 v67, 0x0

    const/16 v68, 0x0

    .line 145
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    .line 146
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v70

    .line 147
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v71

    .line 148
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v73

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v74

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->getFiltersBackupData()Ljava/util/List;

    move-result-object v75

    .line 153
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v76

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v77

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v78

    .line 156
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iMe/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v79

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v80

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/iMe/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v81

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v82

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/iMe/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v83

    .line 161
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/iMe/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v84

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/iMe/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v85

    .line 164
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v86

    .line 165
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v87

    .line 166
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v88

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v89

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v90

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/BookmarksController;->getBookmarks()Ljava/util/Map;

    move-result-object v91

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/DialogTranslationController;->getBackupData()Ljava/util/List;

    move-result-object v92

    .line 174
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v93

    .line 175
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v94

    .line 176
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v95

    .line 177
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v96

    .line 178
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v97

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/MusicController;->getSelectedMusicTab()Lcom/iMe/ui/music/MusicTab;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v98

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/MusicController;->getPlaylists()Ljava/util/Map;

    move-result-object v99

    .line 182
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v100

    .line 183
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v101

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v102

    invoke-static/range {v102 .. v103}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    .line 185
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesBackupData()Ljava/util/List;

    move-result-object v103

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v104

    .line 188
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v105

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v106

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v107

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v108

    .line 192
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicsBackupData()Ljava/util/List;

    move-result-object v109

    const/16 v2, 0xc

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v117

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const v113, -0x7fffec00

    const/16 v114, 0x1

    const/16 v115, 0x1800

    const/16 v116, 0x0

    move-object v2, v0

    move-object/from16 v14, v34

    move/from16 v118, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v33

    move-object/from16 v33, v63

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

    move-object/from16 v62, v1

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

    move-object/from16 v82, v83

    move-object/from16 v83, v84

    move-object/from16 v84, v85

    move-object/from16 v85, v86

    move-object/from16 v86, v87

    move-object/from16 v87, v88

    move-object/from16 v88, v89

    move-object/from16 v89, v90

    move-object/from16 v90, v91

    move-object/from16 v91, v92

    move-object/from16 v92, v93

    move-object/from16 v93, v94

    move-object/from16 v94, v95

    move-object/from16 v95, v96

    move-object/from16 v96, v97

    move-object/from16 v97, v98

    move-object/from16 v98, v99

    move-object/from16 v99, v100

    move-object/from16 v100, v101

    move-object/from16 v101, v102

    move-object/from16 v102, v103

    move-object/from16 v103, v104

    move-object/from16 v104, v105

    move-object/from16 v105, v106

    move-object/from16 v106, v107

    move-object/from16 v107, v108

    move-object/from16 v108, v109

    move-object/from16 v109, v117

    .line 79
    invoke-direct/range {v2 .. v116}, Lcom/iMe/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v5, p0

    :try_start_2
    invoke-direct {v5, v3, v4}, Lcom/iMe/fork/controller/BackupController;->buildBackupFileName(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v118

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v118

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v12, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v6 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;Z)V

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->resetLastAutoBackupTime()V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v1

    .line 207
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 32
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    return-object v0
.end method

.method public final isAutoBackupEnabled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 47
    sget-object v0, Lcom/iMe/fork/enums/Interval;->Companion:Lcom/iMe/fork/enums/Interval$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/fork/enums/Interval;)Lcom/iMe/fork/enums/Interval;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 48
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public final resetLastAutoBackupTime()V
    .locals 2

    .line 71
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

    .line 212
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

    .line 61
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/iMe/fork/enums/Interval;->Companion:Lcom/iMe/fork/enums/Interval$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iMe/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/fork/enums/Interval;)Lcom/iMe/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/iMe/fork/controller/BackupController;->lastAutoBackupTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoBackupEnabled(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return-void
.end method

.method public final setSelectedAutoBackupInterval(Lcom/iMe/fork/enums/Interval;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController;->selectedAutoBackupInterval:Lcom/iMe/fork/enums/Interval;

    return-void
.end method
