.class public final Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;
.super Ljava/lang/Object;
.source "AppCacheDatabaseMigrations.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field private static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field private static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field private static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field private static final MIGRATION_6_7:Landroidx/room/migration/Migration;

.field private static final migrations:[Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

    invoke-direct {v0}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->INSTANCE:Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;

    .line 8
    new-instance v0, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_2_3$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 19
    new-instance v1, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;

    invoke-direct {v1}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_3_4$1;-><init>()V

    sput-object v1, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 28
    new-instance v2, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;

    invoke-direct {v2}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_4_5$1;-><init>()V

    sput-object v2, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    .line 38
    new-instance v3, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;

    invoke-direct {v3}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_5_6$1;-><init>()V

    sput-object v3, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    .line 49
    new-instance v4, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;

    invoke-direct {v4}, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations$MIGRATION_6_7$1;-><init>()V

    sput-object v4, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    const/4 v5, 0x5

    new-array v5, v5, [Landroidx/room/migration/Migration;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 62
    sput-object v5, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

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

    .line 62
    sget-object v0, Lcom/smedialink/storage/data/locale/db/migration/AppCacheDatabaseMigrations;->migrations:[Landroidx/room/migration/Migration;

    return-object v0
.end method
