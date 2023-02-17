.class public final Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;
.super Ljava/lang/Object;
.source "DataSourceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;

    invoke-direct {v0}, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;->$$INSTANCE:Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unsupportedDataSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " data source is not supported yet"

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
