.class public final Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;
.super Ljava/lang/Object;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstanceForAutoBackupSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 2

    .line 281
    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_BACKUP:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V

    return-object v0
.end method

.method public final newInstanceForAutoUpdateTopicsCatalogSettings()Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 2

    .line 284
    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_UPDATE_TOPICS_CATALOG:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;-><init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V

    return-object v0
.end method
