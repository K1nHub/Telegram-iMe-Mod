.class public final Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;
.super Ljava/lang/Object;
.source "AppCacheDatabaseMigrations.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

.field private static final MIGRATION_2_3:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;

.field private static final MIGRATION_3_4:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;

.field private static final MIGRATION_4_5:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;

.field private static final MIGRATION_5_6:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;

.field private static final MIGRATION_6_7:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;

.field private static final MIGRATION_7_9:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_7_9$1;

.field private static final MIGRATION_9_10:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_9_10$1;

.field private static final migrations:[Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->INSTANCE:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

    .line 8
    new-instance v0, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_2_3:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;

    .line 19
    new-instance v1, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;

    invoke-direct {v1}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;-><init>()V

    sput-object v1, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_3_4:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;

    .line 28
    new-instance v2, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;

    invoke-direct {v2}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;-><init>()V

    sput-object v2, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_4_5:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;

    .line 38
    new-instance v3, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;

    invoke-direct {v3}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;-><init>()V

    sput-object v3, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_5_6:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;

    .line 49
    new-instance v4, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;

    invoke-direct {v4}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;-><init>()V

    sput-object v4, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_6_7:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;

    .line 62
    new-instance v5, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_7_9$1;

    invoke-direct {v5}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_7_9$1;-><init>()V

    sput-object v5, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_7_9:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_7_9$1;

    .line 70
    new-instance v6, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_9_10$1;

    invoke-direct {v6}, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_9_10$1;-><init>()V

    sput-object v6, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_9_10:Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_9_10$1;

    const/4 v7, 0x7

    new-array v7, v7, [Landroidx/room/migration/Migration;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 81
    sput-object v7, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrations()[Landroidx/room/migration/Migration;
    .locals 1

    .line 81
    sget-object v0, Lcom/iMe/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

    return-object v0
.end method
