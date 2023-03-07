.class public final enum Lorg/fork/enums/DrawerSocialNetwork;
.super Ljava/lang/Enum;
.source "DrawerSocialNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/DrawerSocialNetwork$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/DrawerSocialNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum APP_STORE:Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum GOOGLE_PLAY:Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum SITE:Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum TELEGRAM:Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum TWITTER:Lorg/fork/enums/DrawerSocialNetwork;

.field public static final enum YOUTUBE:Lorg/fork/enums/DrawerSocialNetwork;


# instance fields
.field private final iconResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/DrawerSocialNetwork;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/fork/enums/DrawerSocialNetwork;

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->TELEGRAM:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->TWITTER:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->YOUTUBE:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->APP_STORE:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->GOOGLE_PLAY:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerSocialNetwork;->SITE:Lorg/fork/enums/DrawerSocialNetwork;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_telegram:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_telegram:I

    const-string v3, "TELEGRAM"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->TELEGRAM:Lorg/fork/enums/DrawerSocialNetwork;

    .line 13
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_twitter:I

    const-string v3, "TWITTER"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->TWITTER:Lorg/fork/enums/DrawerSocialNetwork;

    .line 14
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_youtube:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_youtube:I

    const-string v3, "YOUTUBE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->YOUTUBE:Lorg/fork/enums/DrawerSocialNetwork;

    .line 15
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_app_store:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_app_store:I

    const-string v3, "APP_STORE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->APP_STORE:Lorg/fork/enums/DrawerSocialNetwork;

    .line 16
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_google_play:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_google_play:I

    const-string v3, "GOOGLE_PLAY"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->GOOGLE_PLAY:Lorg/fork/enums/DrawerSocialNetwork;

    .line 17
    new-instance v0, Lorg/fork/enums/DrawerSocialNetwork;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_site:I

    sget v2, Lorg/telegram/messenger/R$string;->drawer_social_network_site:I

    const-string v3, "SITE"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/DrawerSocialNetwork;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->SITE:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-static {}, Lorg/fork/enums/DrawerSocialNetwork;->$values()[Lorg/fork/enums/DrawerSocialNetwork;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/DrawerSocialNetwork;->$VALUES:[Lorg/fork/enums/DrawerSocialNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/DrawerSocialNetwork;->iconResId:I

    iput p4, p0, Lorg/fork/enums/DrawerSocialNetwork;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/DrawerSocialNetwork;
    .locals 1

    const-class v0, Lorg/fork/enums/DrawerSocialNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/DrawerSocialNetwork;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/DrawerSocialNetwork;
    .locals 1

    sget-object v0, Lorg/fork/enums/DrawerSocialNetwork;->$VALUES:[Lorg/fork/enums/DrawerSocialNetwork;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/DrawerSocialNetwork;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/fork/enums/DrawerSocialNetwork;->iconResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/fork/enums/DrawerSocialNetwork;->titleResId:I

    return v0
.end method

.method public final url()Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lorg/fork/enums/DrawerSocialNetwork$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "https://imem.app"

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    const-string v1, "PLAYSTORE_APP_URL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "https://apps.apple.com/us/app/ime-messenger/id1450480822"

    goto :goto_0

    :pswitch_3
    const-string v0, "https://www.youtube.com/c/iMeMessenger"

    goto :goto_0

    :pswitch_4
    const-string v0, "https://twitter.com/ImePlatform"

    goto :goto_0

    .line 20
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_channel_username:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026p_alert_channel_username)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
