.class public final enum Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
.super Ljava/lang/Enum;
.source "ChooseIntervalSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

.field public static final enum AUTO_BACKUP:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

.field public static final enum AUTO_UPDATE_TOPICS_CATALOG:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;


# direct methods
.method private static final synthetic $values()[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_BACKUP:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_UPDATE_TOPICS_CATALOG:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 180
    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    const-string v1, "AUTO_BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_BACKUP:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    new-instance v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    const-string v1, "AUTO_UPDATE_TOPICS_CATALOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->AUTO_UPDATE_TOPICS_CATALOG:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-static {}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->$values()[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    move-result-object v0

    sput-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->$VALUES:[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
    .locals 1

    const-class v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    return-object p0
.end method

.method public static values()[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;
    .locals 1

    sget-object v0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;->$VALUES:[Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$Type;

    return-object v0
.end method
