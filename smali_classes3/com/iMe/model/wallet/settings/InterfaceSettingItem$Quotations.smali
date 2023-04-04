.class public final Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Quotations;
.super Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.source "InterfaceSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quotations"
.end annotation


# instance fields
.field private final isEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 6

    .line 23
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_quotation_26:I

    .line 24
    sget v3, Lorg/telegram/messenger/R$string;->wallet_settings_interface_quotations:I

    .line 25
    sget v4, Lorg/telegram/messenger/R$string;->wallet_settings_interface_quotations_description:I

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;-><init>(ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Quotations;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Quotations;->isEnabled:Z

    return v0
.end method
