.class public final Lcom/smedialink/common/TelegramPreferenceKeys;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/common/TelegramPreferenceKeys$Global;,
        Lcom/smedialink/common/TelegramPreferenceKeys$User;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/TelegramPreferenceKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/TelegramPreferenceKeys;

    invoke-direct {v0}, Lcom/smedialink/common/TelegramPreferenceKeys;-><init>()V

    sput-object v0, Lcom/smedialink/common/TelegramPreferenceKeys;->INSTANCE:Lcom/smedialink/common/TelegramPreferenceKeys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$withForkPrefix(Lcom/smedialink/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/smedialink/common/TelegramPreferenceKeys;->withForkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final withForkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "iMe_"

    .line 15
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
