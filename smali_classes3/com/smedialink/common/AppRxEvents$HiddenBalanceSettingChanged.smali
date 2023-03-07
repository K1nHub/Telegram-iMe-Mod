.class public final Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;
.super Lcom/smedialink/common/AppRxEvents;
.source "AppRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/common/AppRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HiddenBalanceSettingChanged"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;

    invoke-direct {v0}, Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;-><init>()V

    sput-object v0, Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;->INSTANCE:Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/smedialink/common/AppRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
