.class public final synthetic Lorg/fork/enums/DrawerSocialNetwork$WhenMappings;
.super Ljava/lang/Object;
.source "DrawerSocialNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/DrawerSocialNetwork;
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

    invoke-static {}, Lorg/fork/enums/DrawerSocialNetwork;->values()[Lorg/fork/enums/DrawerSocialNetwork;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->TELEGRAM:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->TWITTER:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->YOUTUBE:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->APP_STORE:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->GOOGLE_PLAY:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->SITE:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
