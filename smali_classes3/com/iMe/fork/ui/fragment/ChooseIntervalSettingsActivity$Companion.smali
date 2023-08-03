.class public final Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;
.super Ljava/lang/Object;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstanceForAutoBackupSettings()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;
    .locals 2

    .line 272
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_BACKUP:Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;-><init>(Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;)V

    return-object v0
.end method
