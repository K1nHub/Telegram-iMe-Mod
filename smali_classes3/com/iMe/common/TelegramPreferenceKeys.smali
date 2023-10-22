.class public final Lcom/iMe/common/TelegramPreferenceKeys;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/common/TelegramPreferenceKeys$Global;,
        Lcom/iMe/common/TelegramPreferenceKeys$User;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramPreferenceKeys;

    invoke-direct {v0}, Lcom/iMe/common/TelegramPreferenceKeys;-><init>()V

    sput-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/common/TelegramPreferenceKeys;->withForkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final withForkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMe_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
