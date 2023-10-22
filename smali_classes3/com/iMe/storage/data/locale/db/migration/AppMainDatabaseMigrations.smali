.class public final Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;
.super Ljava/lang/Object;
.source "AppMainDatabaseMigrations.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;

.field private static final MIGRATION_10_11:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_10_11$1;

.field private static final MIGRATION_11_12:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_11_12$1;

.field private static final MIGRATION_12_13:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_12_13$1;

.field private static final MIGRATION_13_14:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1;

.field private static final MIGRATION_14_15:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_14_15$1;

.field private static final MIGRATION_15_16:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_15_16$1;

.field private static final MIGRATION_16_17:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_16_17$1;

.field private static final MIGRATION_17_18:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_17_18$1;

.field private static final MIGRATION_18_19:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1;

.field private static final MIGRATION_1_2:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_1_2$1;

.field private static final MIGRATION_2_3:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_2_3$1;

.field private static final MIGRATION_3_4:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_3_4$1;

.field private static final MIGRATION_4_5:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_4_5$1;

.field private static final MIGRATION_5_6:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_5_6$1;

.field private static final MIGRATION_6_7:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_6_7$1;

.field private static final MIGRATION_7_8:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_7_8$1;

.field private static final MIGRATION_8_9:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_8_9$1;

.field private static final MIGRATION_9_10:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1;

.field private static final migrations:[Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;

    .line 18
    new-instance v0, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_1_2$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_1_2$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_1_2:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_1_2$1;

    .line 27
    new-instance v1, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_2_3$1;

    invoke-direct {v1}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_2_3$1;-><init>()V

    sput-object v1, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_2_3:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_2_3$1;

    .line 33
    new-instance v2, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_3_4$1;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_3_4$1;-><init>()V

    sput-object v2, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_3_4:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_3_4$1;

    .line 42
    new-instance v3, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_4_5$1;

    invoke-direct {v3}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_4_5$1;-><init>()V

    sput-object v3, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_4_5:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_4_5$1;

    .line 51
    new-instance v4, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_5_6$1;

    invoke-direct {v4}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_5_6$1;-><init>()V

    sput-object v4, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_5_6:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_5_6$1;

    .line 64
    new-instance v5, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_6_7$1;

    invoke-direct {v5}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_6_7$1;-><init>()V

    sput-object v5, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_6_7:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_6_7$1;

    .line 70
    new-instance v6, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_7_8$1;

    invoke-direct {v6}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_7_8$1;-><init>()V

    sput-object v6, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_7_8:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_7_8$1;

    .line 79
    new-instance v7, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_8_9$1;

    invoke-direct {v7}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_8_9$1;-><init>()V

    sput-object v7, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_8_9:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_8_9$1;

    .line 86
    new-instance v8, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1;

    invoke-direct {v8}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1;-><init>()V

    sput-object v8, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_9_10:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_9_10$1;

    .line 124
    new-instance v9, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_10_11$1;

    invoke-direct {v9}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_10_11$1;-><init>()V

    sput-object v9, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_10_11:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_10_11$1;

    .line 134
    new-instance v10, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_11_12$1;

    invoke-direct {v10}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_11_12$1;-><init>()V

    sput-object v10, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_11_12:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_11_12$1;

    .line 140
    new-instance v11, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_12_13$1;

    invoke-direct {v11}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_12_13$1;-><init>()V

    sput-object v11, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_12_13:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_12_13$1;

    .line 149
    new-instance v12, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1;

    invoke-direct {v12}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1;-><init>()V

    sput-object v12, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_13_14:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_13_14$1;

    .line 176
    new-instance v13, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_14_15$1;

    invoke-direct {v13}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_14_15$1;-><init>()V

    sput-object v13, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_14_15:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_14_15$1;

    .line 182
    new-instance v14, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_15_16$1;

    invoke-direct {v14}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_15_16$1;-><init>()V

    sput-object v14, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_15_16:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_15_16$1;

    .line 188
    new-instance v15, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_16_17$1;

    invoke-direct {v15}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_16_17$1;-><init>()V

    sput-object v15, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_16_17:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_16_17$1;

    .line 194
    new-instance v16, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_17_18$1;

    invoke-direct/range {v16 .. v16}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_17_18$1;-><init>()V

    sput-object v16, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_17_18:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_17_18$1;

    .line 201
    new-instance v17, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1;

    invoke-direct/range {v17 .. v17}, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1;-><init>()V

    sput-object v17, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->MIGRATION_18_19:Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_18_19$1;

    move-object/from16 v18, v15

    const/16 v15, 0x12

    new-array v15, v15, [Landroidx/room/migration/Migration;

    const/16 v19, 0x0

    aput-object v0, v15, v19

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    const/16 v0, 0xf

    aput-object v18, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    .line 211
    sput-object v15, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getMigrations()[Landroidx/room/migration/Migration;
    .locals 1

    .line 211
    sget-object v0, Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

    return-object v0
.end method
