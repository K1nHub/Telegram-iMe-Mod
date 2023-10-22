.class public final Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;
.super Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.source "InterfaceSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Networks"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;

    invoke-direct {v0}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;->INSTANCE:Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 15
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_network:I

    .line 16
    sget v1, Lorg/telegram/messenger/R$string;->networks_settings_title:I

    .line 17
    sget v2, Lorg/telegram/messenger/R$string;->networks_settings_subtitle:I

    const/4 v3, 0x0

    .line 14
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
