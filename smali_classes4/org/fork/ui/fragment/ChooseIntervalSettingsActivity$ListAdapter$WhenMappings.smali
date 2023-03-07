.class public final synthetic Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;
.super Ljava/lang/Object;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->values()[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_BACKUP:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_UPDATE_TOPICS_CATALOG:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
