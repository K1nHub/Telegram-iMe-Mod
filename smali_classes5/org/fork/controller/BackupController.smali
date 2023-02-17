.class public final Lorg/fork/controller/BackupController;
.super Lorg/telegram/messenger/BaseController;
.source "BackupController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/BackupController$Companion;,
        Lorg/fork/controller/BackupController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupController.kt\norg/fork/controller/BackupController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,571:1\n56#2,6:572\n1849#3,2:578\n1849#3,2:580\n1547#3:582\n1618#3,3:583\n1849#3,2:587\n1000#3,2:589\n1849#3,2:591\n1895#3,14:594\n1849#3,2:609\n1043#3:611\n1557#3:612\n1588#3,4:613\n1043#3:617\n1557#3:618\n1588#3,4:619\n1849#3,2:623\n1547#3:625\n1618#3,3:626\n1#4:586\n13536#5:593\n13537#5:608\n*S KotlinDebug\n*F\n+ 1 BackupController.kt\norg/fork/controller/BackupController\n*L\n35#1:572,6\n457#1:578,2\n461#1:580,2\n469#1:582\n469#1:583,3\n490#1:587,2\n500#1:589,2\n507#1:591,2\n516#1:594,14\n527#1:609,2\n538#1:611\n539#1:612\n539#1:613,4\n545#1:617\n546#1:618\n546#1:619,4\n247#1:623,2\n478#1:625\n478#1:626,3\n515#1:593\n515#1:608\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/BackupController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/BackupController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final gson$delegate:Lkotlin/Lazy;

.field private isAutoBackupEnabled:Z

.field private lastAutoBackupTime:J

.field private selectedAutoBackupInterval:Lorg/fork/enums/Interval;


# direct methods
.method public static synthetic $r8$lambda$5YlqmZJ2sF0M2eFaY1VSVykM1wY(Lorg/fork/controller/BackupController;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/BackupController;->restore$lambda-15$lambda-13(Lorg/fork/controller/BackupController;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kkqJNeeI6ea5MYIOKnxXgkkksI8(Lorg/fork/models/backup/TopicBackup;)Z
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/BackupController;->migrateToCurrentVersion$lambda-21(Lorg/fork/models/backup/TopicBackup;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oD9RRGIXGbT3ESzSiwEYgeYXisI(Lorg/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/fork/controller/BackupController;->restore$lambda-15(Lorg/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxSf4t-uBGcCckjgf4l9ZYh12Xg(Ljava/lang/Exception;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/BackupController;->restore$lambda-15$lambda-14(Ljava/lang/Exception;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/BackupController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/BackupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/BackupController;->Companion:Lorg/fork/controller/BackupController$Companion;

    .line 561
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Lorg/fork/controller/BackupController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/BackupController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lorg/fork/controller/BackupController;->gson$delegate:Lkotlin/Lazy;

    .line 38
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 39
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

    .line 40
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 32
    sget-object v0, Lorg/fork/controller/BackupController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final buildBackupFileName(J)Ljava/lang/String;
    .locals 3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMeBackup_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    sget-object v1, Lcom/smedialink/common/Constants;->INSTANCE:Lcom/smedialink/common/Constants;

    invoke-virtual {v1}, Lcom/smedialink/common/Constants;->getDateDotsFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lorg/fork/controller/BackupController;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/BackupController;
    .locals 1

    sget-object v0, Lorg/fork/controller/BackupController;->Companion:Lorg/fork/controller/BackupController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/BackupController$Companion;->getInstance(I)Lorg/fork/controller/BackupController;

    move-result-object p0

    return-object p0
.end method

.method public static final isBackupFileName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/fork/controller/BackupController;->Companion:Lorg/fork/controller/BackupController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/BackupController$Companion;->isBackupFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final migrateToCurrentVersion(Lorg/fork/models/backup/Backup;)Lorg/fork/models/backup/Backup;
    .locals 231

    .line 454
    invoke-virtual/range {p1 .. p1}, Lorg/fork/models/backup/Backup;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/16 v3, 0xc

    move-object/from16 v4, p1

    if-gt v0, v3, :cond_38

    :goto_1
    add-int/lit8 v15, v0, 0x1

    const/16 v14, 0xa

    const/16 v117, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v15

    :goto_2
    const/4 v1, 0x1

    const/16 v117, 0x0

    goto/16 :goto_1f

    .line 536
    :pswitch_0
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

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

    .line 537
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_3
    move-object/from16 v1, v117

    goto :goto_5

    .line 1043
    :cond_1
    new-instance v1, Lorg/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;

    invoke-direct {v1}, Lorg/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$1;-><init>()V

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 1557
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1589
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v81

    if-eqz v81, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v81

    add-int/lit8 v82, v2, 0x1

    if-gez v2, :cond_3

    .line 1590
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    move-object/from16 v14, v81

    check-cast v14, Lorg/fork/models/backup/SortingTabStateBackup;

    .line 539
    invoke-virtual {v14, v2}, Lorg/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v2, v82

    const/16 v14, 0xa

    goto :goto_4

    .line 540
    :cond_4
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :goto_5
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

    const/16 v112, -0x1

    const/16 v113, -0x1

    const/16 v114, -0x801

    const/16 v115, 0x7ff

    const/16 v116, 0x0

    const/16 v2, 0xa

    move-object v14, v0

    move v0, v15

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

    move-object/from16 v80, v1

    .line 537
    invoke-static/range {v4 .. v116}, Lorg/fork/models/backup/Backup;->copy$default(Lorg/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lorg/fork/models/backup/Backup;

    move-result-object v4

    goto :goto_6

    :cond_5
    move v0, v15

    const/16 v2, 0xa

    :goto_6
    move-object/from16 v118, v4

    .line 543
    invoke-virtual/range {v118 .. v118}, Lorg/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v119, 0x0

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

    .line 544
    invoke-virtual/range {v118 .. v118}, Lorg/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_7
    move-object/from16 v196, v117

    goto :goto_9

    .line 1043
    :cond_6
    new-instance v3, Lorg/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;

    invoke-direct {v3}, Lorg/fork/controller/BackupController$migrateToCurrentVersion$$inlined$sortedBy$2;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_7

    .line 1557
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1589
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_8

    .line 1590
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    check-cast v4, Lorg/fork/models/backup/SortingTabStateBackup;

    .line 546
    invoke-virtual {v4, v2}, Lorg/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_8

    .line 547
    :cond_9
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v117

    goto :goto_7

    :goto_9
    const/16 v197, 0x0

    const/16 v198, 0x0

    const/16 v199, 0x0

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

    const/16 v226, -0x1

    const/16 v227, -0x1

    const/16 v228, -0x2001

    const/16 v229, 0x7ff

    const/16 v230, 0x0

    .line 544
    invoke-static/range {v118 .. v230}, Lorg/fork/models/backup/Backup;->copy$default(Lorg/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lorg/fork/models/backup/Backup;

    move-result-object v1

    move-object v4, v1

    goto :goto_a

    :cond_a
    move-object/from16 v4, v118

    :goto_a
    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v117, 0x0

    goto/16 :goto_20

    :pswitch_1
    move v0, v15

    .line 524
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_2

    .line 525
    :cond_b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/fork/models/backup/SortingTabStateBackup;

    invoke-virtual {v5}, Lorg/fork/models/backup/SortingTabStateBackup;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ARCHIVE_MENTIONED_CHATS"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v117, v3

    :cond_d
    move-object/from16 v2, v117

    check-cast v2, Lorg/fork/models/backup/SortingTabStateBackup;

    if-nez v2, :cond_e

    goto :goto_c

    .line 1849
    :cond_e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fork/models/backup/SortingTabStateBackup;

    .line 528
    invoke-virtual {v5}, Lorg/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    invoke-virtual {v2}, Lorg/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v7

    if-le v6, v7, :cond_f

    .line 529
    invoke-virtual {v5}, Lorg/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/fork/models/backup/SortingTabStateBackup;->setPosition(I)V

    goto :goto_b

    .line 532
    :cond_10
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :pswitch_2
    move v0, v15

    .line 522
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    sget-object v2, Lorg/fork/enums/MessagePopupItem;->SAVE_AS:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    move v0, v15

    .line 521
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_12
    sget-object v2, Lorg/fork/enums/MessagePopupItem;->COPY_IMAGE:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    move v0, v15

    .line 505
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_2

    .line 506
    :cond_13
    sget-object v2, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_14

    goto/16 :goto_13

    .line 507
    :cond_14
    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v2

    .line 1849
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fork/enums/MultiPanelButton;

    .line 508
    sget-object v6, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_18

    .line 509
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v8}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_e

    :cond_16
    move-object/from16 v7, v117

    :goto_e
    check-cast v7, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_17

    goto :goto_d

    .line 511
    :cond_17
    invoke-virtual {v7}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_d

    :cond_18
    const/4 v6, 0x1

    goto :goto_d

    :cond_19
    const/4 v6, 0x1

    .line 514
    new-instance v2, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    sget-object v5, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v7}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v3, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 515
    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v2

    .line 13536
    array-length v5, v2

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v5, :cond_20

    aget-object v6, v2, v7

    .line 516
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1a

    goto :goto_12

    :cond_1a
    sget-object v8, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v8

    .line 1895
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1896
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1b

    move-object/from16 v11, v117

    goto :goto_10

    .line 1897
    :cond_1b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1898
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1c

    goto :goto_10

    .line 1899
    :cond_1c
    move-object v12, v11

    check-cast v12, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    .line 516
    invoke-virtual {v12}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v12

    .line 1901
    :cond_1d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1902
    move-object v14, v13

    check-cast v14, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    .line 516
    invoke-virtual {v14}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v14

    if-ge v12, v14, :cond_1e

    move-object v11, v13

    move v12, v14

    .line 1907
    :cond_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1d

    .line 516
    :goto_10
    check-cast v11, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v11, :cond_1f

    const/4 v10, 0x0

    goto :goto_11

    :cond_1f
    invoke-virtual {v11}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    :goto_11
    new-instance v11, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-direct {v11, v9, v8, v10}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 519
    :cond_20
    :goto_13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :pswitch_5
    move v0, v15

    .line 503
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_21

    goto/16 :goto_2

    :cond_21
    sget-object v2, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_6
    move v0, v15

    .line 486
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_22

    goto/16 :goto_2

    .line 487
    :cond_22
    sget-object v2, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_23

    goto/16 :goto_18

    .line 488
    :cond_23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v5}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/fork/enums/MultiPanelButton;->SEARCH:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_14

    :cond_25
    move-object/from16 v3, v117

    :goto_14
    check-cast v3, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v3, :cond_26

    move-object/from16 v2, v117

    goto :goto_15

    :cond_26
    invoke-virtual {v3}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_15
    if-nez v2, :cond_27

    goto/16 :goto_18

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 490
    sget-object v3, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-virtual {v3}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v3

    .line 1849
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fork/enums/MultiPanelButton;

    .line 491
    sget-object v6, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    if-eq v5, v6, :cond_2b

    .line 492
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {v8}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_17

    :cond_29
    move-object/from16 v7, v117

    :goto_17
    check-cast v7, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    if-nez v7, :cond_2a

    goto :goto_16

    .line 494
    :cond_2a
    invoke-virtual {v7}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    if-lt v5, v2, :cond_2b

    .line 495
    invoke-virtual {v7}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->setPosition(I)V

    goto :goto_16

    :cond_2b
    const/4 v6, 0x1

    goto :goto_16

    :cond_2c
    const/4 v6, 0x1

    .line 499
    new-instance v3, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    sget-object v5, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v6, v2}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_2d

    new-instance v2, Lorg/fork/controller/BackupController$migrateToCurrentVersion$lambda-26$$inlined$sortBy$1;

    invoke-direct {v2}, Lorg/fork/controller/BackupController$migrateToCurrentVersion$lambda-26$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    :cond_2d
    :goto_18
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :pswitch_7
    move v0, v15

    .line 475
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2e

    goto/16 :goto_2

    :cond_2e
    sget-object v2, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;->INSTANCE:Lorg/fork/controller/BackupController$$ExternalSyntheticLambda3;

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    goto/16 :goto_2

    :pswitch_8
    move v0, v15

    .line 474
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2f

    goto/16 :goto_2

    :cond_2f
    sget-object v2, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_9
    move v0, v15

    const/16 v2, 0xa

    .line 461
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_1b

    .line 1849
    :cond_30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/models/backup/SortingTabStateBackup;

    .line 462
    invoke-virtual {v3}, Lorg/fork/models/backup/SortingTabStateBackup;->getFabDataBackup()Lorg/fork/models/backup/FabDataBackup;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lorg/fork/models/backup/FabDataBackup;->isOldMultiFab()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 463
    invoke-virtual {v3}, Lorg/fork/models/backup/SortingTabStateBackup;->getFabDataBackup()Lorg/fork/models/backup/FabDataBackup;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/models/backup/FabDataBackup;->getMultiFabTypeIds()Ljava/util/Set;

    move-result-object v5

    goto :goto_1a

    .line 465
    :cond_31
    sget-object v5, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v3}, Lorg/fork/models/backup/SortingTabStateBackup;->getFabDataBackup()Lorg/fork/models/backup/FabDataBackup;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fork/models/backup/FabDataBackup;->getFabType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 466
    :goto_1a
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 462
    invoke-virtual {v3, v5}, Lorg/fork/models/backup/SortingTabStateBackup;->setFabs(Ljava/util/Set;)V

    goto :goto_19

    .line 1850
    :cond_32
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1b
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

    const/4 v15, 0x0

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

    .line 468
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fab_multi"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 469
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getAllChatsTabMultiFabs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1547
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 469
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_33
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v78, v1

    const/4 v1, 0x1

    const/16 v117, 0x0

    goto :goto_1d

    :cond_34
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 471
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getAllChatsTabFab()Ljava/lang/String;

    move-result-object v3

    const/16 v117, 0x0

    aput-object v3, v2, v117

    invoke-static {v2}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v78, v2

    :goto_1d
    const/16 v79, 0x0

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

    const/16 v112, -0x1

    const/16 v113, -0x1

    const/16 v114, -0x201

    const/16 v115, 0x7ff

    const/16 v116, 0x0

    .line 468
    invoke-static/range {v4 .. v116}, Lorg/fork/models/backup/Backup;->copy$default(Lorg/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lorg/fork/models/backup/Backup;

    move-result-object v2

    .line 473
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v4, v2

    goto :goto_1f

    :pswitch_a
    move v0, v15

    const/4 v1, 0x1

    const/16 v117, 0x0

    .line 457
    invoke-virtual {v4}, Lorg/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_35

    goto :goto_1f

    .line 1849
    :cond_35
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/models/backup/TopicBackup;

    .line 458
    invoke-virtual {v3}, Lorg/fork/models/backup/TopicBackup;->getTopicId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/smedialink/storage/data/repository/topics/Topic;->valueOf(Ljava/lang/String;)Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/fork/models/backup/TopicBackup;->setIcon(Lcom/smedialink/storage/data/repository/topics/Topic;)V

    goto :goto_1e

    .line 1850
    :cond_36
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1f
    const/16 v2, 0xc

    :goto_20
    if-le v0, v2, :cond_37

    goto :goto_21

    :cond_37
    const/4 v2, 0x1

    const/16 v3, 0xc

    goto/16 :goto_1

    :cond_38
    :goto_21
    return-object v4

    nop

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

.method private static final migrateToCurrentVersion$lambda-21(Lorg/fork/models/backup/TopicBackup;)Z
    .locals 4

    const-string/jumbo v0, "topicModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fork/models/backup/TopicBackup;->setPresets(Ljava/util/Set;)V

    .line 477
    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/repository/topics/Topic;->getPresets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    .line 478
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getDatabaseDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 480
    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getDatabaseDialogs()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final needSkipAutoBackup()Z
    .locals 6

    .line 440
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

    invoke-virtual {v1}, Lorg/fork/enums/Interval;->getDays()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 441
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/fork/controller/BackupController;->lastAutoBackupTime:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final restore$lambda-15(Lorg/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 3

    const-string/jumbo v0, "this$0"

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
    invoke-direct {p0}, Lorg/fork/controller/BackupController;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v1, Lorg/fork/models/backup/Backup;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(reader, Backup::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/models/backup/Backup;

    invoke-direct {p0, p1}, Lorg/fork/controller/BackupController;->migrateToCurrentVersion(Lorg/fork/models/backup/Backup;)Lorg/fork/models/backup/Backup;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/BackupController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 218
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/ForkCommonController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 219
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilesSendingPreviewAndCaptionEnabled(Z)V

    .line 222
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isVibrationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVibrationEnabled(Z)V

    .line 225
    :cond_1
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRaiseToSwitchSpeakerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRaiseToSwitchSpeakerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRaiseToSwitchSpeakerEnabled(Z)V

    .line 228
    :cond_2
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    sget-object v0, Lorg/fork/enums/StickersSize;->Companion:Lorg/fork/enums/StickersSize$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedStickersSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/StickersSize$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/StickersSize;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedStickersSize(Lorg/fork/enums/StickersSize;)V

    .line 231
    :cond_3
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isProxyButtonForceVisible()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isProxyButtonForceVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonForceVisible(Z)V

    .line 234
    :cond_4
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 235
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReadAllChatsConfirmationShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 237
    :cond_5
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 238
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isProfileInfoHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setProfileInfoHidden(Z)V

    .line 240
    :cond_6
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiForwardingOptionsHintShown(Z)V

    .line 243
    :cond_7
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 244
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSuggestPremiumReactionsEmoji(Z)V

    .line 1849
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/enums/BackupComponent;

    .line 248
    sget-object v1, Lorg/fork/controller/BackupController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/ForkTopicsController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/TemplatesController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 412
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 413
    sget-object v0, Lorg/fork/enums/TemplatesMode;->Companion:Lorg/fork/enums/TemplatesMode$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTemplatesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/TemplatesMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesMode(Lorg/fork/enums/TemplatesMode;)V

    .line 415
    :cond_a
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 416
    sget-object v0, Lorg/fork/enums/TemplatesSortingType;->Companion:Lorg/fork/enums/TemplatesSortingType$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/TemplatesSortingType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesSortingType;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lorg/fork/enums/TemplatesSortingType;)V

    goto :goto_0

    .line 409
    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lorg/fork/controller/DialogTranslationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/DialogTranslationController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/MusicController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 393
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 394
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPlayerPinned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPlayerPinned(Z)V

    .line 396
    :cond_b
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 397
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerMinimized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerMinimized(Z)V

    .line 399
    :cond_c
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 400
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerThemeOverridden(Z)V

    .line 402
    :cond_d
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 403
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setPinnedPlayerNightThemeEnabled(Z)V

    .line 405
    :cond_e
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 406
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMusicIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_0

    .line 390
    :pswitch_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/BookmarksController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 379
    :pswitch_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/AlbumsController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 380
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 381
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCLoudAlbumsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCloudAlbumsEnabled(Z)V

    .line 383
    :cond_f
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 384
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAlbumsIntroShown()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 386
    :cond_10
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 387
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSortCloudAlbumsByNameEnabled(Z)V

    goto/16 :goto_0

    .line 368
    :pswitch_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    .line 369
    invoke-virtual {v0, p1}, Lorg/fork/controller/FiltersController;->restoreAllChatsTabBackup(Lorg/fork/models/backup/Backup;)V

    .line 370
    invoke-virtual {v0, v1, p1, p3}, Lorg/fork/controller/FiltersController;->restoreSortingBackup(ZLorg/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1, p1, p3}, Lorg/fork/controller/FiltersController;->restoreSortingBackup(ZLorg/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 372
    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 374
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChatSortingEnabledByDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatSortingEnabledByDefault(Z)V

    goto/16 :goto_0

    .line 353
    :pswitch_7
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/FiltersController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 354
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 355
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setFilterTabsAtBottomEnabled(Z)V

    .line 357
    :cond_11
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 358
    sget-object v0, Lorg/fork/enums/FilterTabNotificationMode;->Companion:Lorg/fork/enums/FilterTabNotificationMode$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/FilterTabNotificationMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsNotificationMode(Lorg/fork/enums/FilterTabNotificationMode;)V

    .line 360
    :cond_12
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 361
    sget-object v0, Lorg/fork/enums/FilterTabWidthMode;->Companion:Lorg/fork/enums/FilterTabWidthMode$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/FilterTabWidthMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabWidthMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedFilterTabsWidthMode(Lorg/fork/enums/FilterTabWidthMode;)V

    .line 363
    :cond_13
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 364
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getRememberLastFilterTab()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRememberLastFilterTabEnabled(Z)V

    goto/16 :goto_0

    .line 311
    :pswitch_8
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/ToolsController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 312
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 313
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    .line 315
    :cond_14
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCustomSharingModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 316
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCustomSharingModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCustomSharingModeEnabled(Z)V

    .line 318
    :cond_15
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 319
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMultiReplyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMultiReplyEnabled(Z)V

    .line 321
    :cond_16
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 322
    sget-object v0, Lorg/fork/enums/ChatProfileTelegramIdMode;->Companion:Lorg/fork/enums/ChatProfileTelegramIdMode$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/ChatProfileTelegramIdMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedChatProfileTelegramIdMode(Lorg/fork/enums/ChatProfileTelegramIdMode;)V

    .line 324
    :cond_17
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 325
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMessageQuickTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMessageQuickTranslateEnabled(Z)V

    .line 327
    :cond_18
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 328
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isBotHelpTranslateEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setBotHelpTranslateEnabled(Z)V

    .line 330
    :cond_19
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 331
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isTranslateInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setTranslateInSendPopupEnabled(Z)V

    .line 333
    :cond_1a
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 334
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCombineMessagesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCombineMessagesEnabled(Z)V

    .line 336
    :cond_1b
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 337
    sget-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    .line 339
    :cond_1c
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 340
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReactionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsEnabled(Z)V

    .line 342
    :cond_1d
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 343
    sget-object v0, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDialogTypesForMessagePopupReactions(Ljava/util/Set;)V

    .line 345
    :cond_1e
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 346
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isReactionsInSendPopupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setReactionsInSendPopupEnabled(Z)V

    .line 348
    :cond_1f
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerHolidayIconType()Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 349
    sget-object v0, Lorg/fork/enums/DrawerHolidayIconType;->Companion:Lorg/fork/enums/DrawerHolidayIconType$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerHolidayIconType()Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/DrawerHolidayIconType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHolidayIconType(Lorg/fork/enums/DrawerHolidayIconType;)V

    goto/16 :goto_0

    .line 309
    :pswitch_9
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/MultiPanelController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 250
    :pswitch_a
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/ToolsController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    .line 251
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerHeaderSettings()Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 252
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerHeaderSettings()Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHeaderSettings(Lorg/fork/models/DrawerHeaderSettings;)V

    .line 254
    :cond_20
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 255
    sget-object v0, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/smedialink/ui/drawer/DrawerSwitchableItem$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDrawerItems()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smedialink/ui/drawer/DrawerSwitchableItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 257
    :cond_21
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 258
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setActionBarAccountSwitchEnabled(Z)V

    .line 260
    :cond_22
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 261
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMainActionBarMenuEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setMainActionBarMenuEnabled(Z)V

    .line 263
    :cond_23
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 264
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDialogsCompactModeEnabled(Z)V

    .line 265
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isDialogsCompactModeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 266
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setUseThreeLinesLayout(Z)V

    .line 269
    :cond_24
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 270
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setHideChatKeyboardOnScrollEnabled(Z)V

    .line 272
    :cond_25
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 273
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChatThemesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setChatThemesEnabled(Z)V

    .line 275
    :cond_26
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 276
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerEnabled(Z)V

    .line 278
    :cond_27
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 279
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerByTapEnabled(Z)V

    .line 281
    :cond_28
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 282
    sget-object v0, Lorg/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lorg/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V

    .line 284
    :cond_29
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 285
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isCallsConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setCallsConfirmationEnabled(Z)V

    .line 287
    :cond_2a
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 288
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDeleteCloudConfirmationEnabled(Z)V

    .line 290
    :cond_2b
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 291
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSendingGifConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 293
    :cond_2c
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 294
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    .line 296
    :cond_2d
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 297
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSpeakWithoutHoldEnabled(Z)V

    .line 299
    :cond_2e
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 300
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setVideoSpeakWithoutHoldEnabled(Z)V

    .line 302
    :cond_2f
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 303
    sget-object v0, Lorg/fork/enums/VideoVoiceCamera;->Companion:Lorg/fork/enums/VideoVoiceCamera$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/VideoVoiceCamera$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/VideoVoiceCamera;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedVideoVoiceCamera(Lorg/fork/enums/VideoVoiceCamera;)V

    .line 305
    :cond_30
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 306
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fork/controller/RecentChatsController;->restoreBackup(Lorg/fork/models/backup/Backup;)V

    goto/16 :goto_0

    .line 422
    :cond_31
    new-instance p1, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4}, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/BackupController;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 427
    new-instance p1, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Exception;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

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

.method private static final restore$lambda-15$lambda-13(Lorg/fork/controller/BackupController;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 424
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final restore$lambda-15$lambda-14(Ljava/lang/Exception;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onEnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 429
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final backup(Z)V
    .locals 117

    move-object/from16 v1, p0

    if-eqz p1, :cond_1

    .line 75
    iget-boolean v0, v1, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/fork/controller/BackupController;->needSkipAutoBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    new-instance v0, Lorg/fork/models/backup/Backup;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v2

    iget-object v2, v2, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

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
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isRaiseToSwitchSpeakerEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 85
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateStickers()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 91
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->getSelectedContactsFilter()Lcom/smedialink/model/contacts/ContactsFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    .line 93
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 94
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 95
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 96
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 98
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDrawerHeaderSettings()Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v20

    .line 99
    sget-object v2, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->Companion:Lcom/smedialink/ui/drawer/DrawerSwitchableItem$Companion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    move-object/from16 v21, v15

    const-string/jumbo v15, "selectedDrawerItems"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/smedialink/ui/drawer/DrawerSwitchableItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 100
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 101
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 102
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 105
    sget-object v2, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v27

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 107
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 108
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 109
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/fork/controller/ToolsController;->getChatAttachAlertButtonsBackupData()Ljava/util/Map;

    move-result-object v31

    .line 110
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 111
    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 112
    sget-object v15, Lorg/fork/enums/ExtendedAvatarPreviewerItem;->Companion:Lorg/fork/enums/ExtendedAvatarPreviewerItem$Companion;

    move-object/from16 v34, v1

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    move-object/from16 v35, v14

    const-string/jumbo v14, "selectedExtendedAvatarPreviewerItems"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Lorg/fork/enums/ExtendedAvatarPreviewerItem$Companion;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->getMessagePopupItemBackupData()Ljava/util/List;

    move-result-object v36

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    .line 116
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    .line 117
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    .line 118
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    .line 119
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    .line 120
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    .line 121
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    .line 122
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lorg/fork/enums/VideoVoiceCamera;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v45

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/MultiPanelController;->getBackupData()Ljava/util/Map;

    move-result-object v49

    .line 129
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    .line 130
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    .line 131
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v52

    .line 132
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v53

    .line 133
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    .line 134
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v55

    .line 135
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v57

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->getSelectedSentMessageFont()Lorg/fork/enums/SentMessageFont;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v58

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    .line 139
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    .line 140
    sget-object v14, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    move-object/from16 v61, v1

    const-string/jumbo v1, "selectedPhotoViewerMenuItems"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 141
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    .line 142
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    const-string/jumbo v15, "selectedDialogTypesForMessagePopupReactions"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lorg/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v63

    .line 143
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v64

    const/16 v65, 0x0

    const/16 v66, 0x0

    .line 145
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    .line 146
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v68

    .line 147
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v69

    .line 148
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v70

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v71

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->getFiltersBackupData()Ljava/util/List;

    move-result-object v73

    .line 153
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v74

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v75

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v76

    .line 156
    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v77

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lorg/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v78

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v79

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lorg/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v80

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/fork/controller/FiltersController;->getBackupSortingTabs(Z)Ljava/util/List;

    move-result-object v81

    .line 161
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v82

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/fork/controller/FiltersController;->getPinnedChats(Z)Ljava/util/Map;

    move-result-object v83

    .line 164
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v84

    .line 165
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v85

    .line 166
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v86

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/AlbumsController;->isOpenAlbumsInsteadCloudEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v87

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/AlbumsController;->getAlbums()Ljava/util/List;

    move-result-object v88

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/BookmarksController;->getBookmarks()Ljava/util/Map;

    move-result-object v89

    .line 172
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lorg/fork/controller/DialogTranslationController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/DialogTranslationController;->getBackupData()Ljava/util/List;

    move-result-object v90

    .line 174
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v91

    .line 175
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v92

    .line 176
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v93

    .line 177
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v94

    .line 178
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v95

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/MusicController;->getSelectedMusicTab()Lcom/smedialink/ui/music/MusicTab;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v96

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/MusicController;->getPlaylists()Ljava/util/Map;

    move-result-object v97

    .line 182
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v98

    .line 183
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v99

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v100

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    .line 185
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/TemplatesController;->getTemplatesBackupData()Ljava/util/List;

    move-result-object v101

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v102

    .line 188
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v103

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v104

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v105

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v106

    .line 192
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkTopicsController;->getTopicsBackupData()Ljava/util/List;

    move-result-object v107

    const/16 v2, 0xc

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v115

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/high16 v111, 0x60000000

    const/16 v112, 0x0

    const/16 v113, 0x600

    const/16 v114, 0x0

    move-object v2, v0

    move-object/from16 v14, v35

    const/16 v116, 0x0

    move-object/from16 v15, v21

    move-object/from16 v21, v34

    move-object/from16 v34, v61

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

    move-object/from16 v60, v1

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

    move-object/from16 v107, v115

    .line 79
    invoke-direct/range {v2 .. v114}, Lorg/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {v5, v3, v4}, Lorg/fork/controller/BackupController;->buildBackupFileName(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lorg/fork/controller/BackupController;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 200
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v116

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v116

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
    invoke-virtual/range {p0 .. p0}, Lorg/fork/controller/BackupController;->resetLastAutoBackupTime()V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/fork/controller/BackupController;->saveConfig()V
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

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

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

.method public final getLastAutoBackupTime()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/fork/controller/BackupController;->lastAutoBackupTime:J

    return-wide v0
.end method

.method public final getSelectedAutoBackupInterval()Lorg/fork/enums/Interval;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

    return-object v0
.end method

.method public final isAutoBackupEnabled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAutoBackupEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/BackupController;->setAutoBackupEnabled(Z)V

    .line 47
    sget-object v0, Lorg/fork/enums/Interval;->Companion:Lorg/fork/enums/Interval$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lorg/fork/enums/Interval;)Lorg/fork/enums/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/BackupController;->setSelectedAutoBackupInterval(Lorg/fork/enums/Interval;)V

    .line 48
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastAutoBackupTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/fork/controller/BackupController;->setLastAutoBackupTime(J)V

    return-void
.end method

.method public final resetLastAutoBackupTime()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public final restore(Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/List<",
            "+",
            "Lorg/fork/enums/BackupComponent;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lorg/fork/utils/Callbacks$Callback1<",
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

    new-instance v7, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/fork/controller/BackupController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/BackupController;Lorg/telegram/messenger/MessageObject;Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 2

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAutoBackupEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    .line 64
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lorg/fork/enums/Interval;->Companion:Lorg/fork/enums/Interval$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedAutoBackupInterval()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lorg/fork/enums/Interval;)Lorg/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lorg/fork/controller/BackupController;->saveConfig()V

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
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAutoBackupEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAutoBackupInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/BackupController;->getSelectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->lastAutoBackupTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/BackupController;->getLastAutoBackupTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoBackupEnabled(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/fork/controller/BackupController;->isAutoBackupEnabled:Z

    return-void
.end method

.method public final setLastAutoBackupTime(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lorg/fork/controller/BackupController;->lastAutoBackupTime:J

    return-void
.end method

.method public final setSelectedAutoBackupInterval(Lorg/fork/enums/Interval;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/fork/controller/BackupController;->selectedAutoBackupInterval:Lorg/fork/enums/Interval;

    return-void
.end method
