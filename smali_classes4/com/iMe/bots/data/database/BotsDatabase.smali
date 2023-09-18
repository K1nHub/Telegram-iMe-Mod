.class public abstract Lcom/iMe/bots/data/database/BotsDatabase;
.super Landroidx/room/RoomDatabase;
.source "BotsDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/database/BotsDatabase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/bots/data/database/BotsDatabase$Companion;

.field private static volatile INSTANCE:Lcom/iMe/bots/data/database/BotsDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/bots/data/database/BotsDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/database/BotsDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/bots/data/database/BotsDatabase;->Companion:Lcom/iMe/bots/data/database/BotsDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/iMe/bots/data/database/BotsDatabase;
    .locals 1

    .line 16
    sget-object v0, Lcom/iMe/bots/data/database/BotsDatabase;->INSTANCE:Lcom/iMe/bots/data/database/BotsDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/iMe/bots/data/database/BotsDatabase;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/iMe/bots/data/database/BotsDatabase;->INSTANCE:Lcom/iMe/bots/data/database/BotsDatabase;

    return-void
.end method


# virtual methods
.method public abstract botsDao()Lcom/iMe/bots/data/database/BotsDao;
.end method

.method public abstract categoryDao()Lcom/iMe/bots/data/database/BotsCategoryDao;
.end method

.method public abstract holidaysDao()Lcom/iMe/bots/data/database/HolidaysDao;
.end method

.method public abstract recentDao()Lcom/iMe/bots/data/database/RecentDao;
.end method

.method public abstract tagsDao()Lcom/iMe/bots/data/database/BotsTagDao;
.end method
