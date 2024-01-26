.class public abstract Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;
.super Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.source "InterfaceSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SwitchableOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Banners;,
        Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption$Quotations;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final isEnabled:Z

.field private final title:I


# direct methods
.method private constructor <init>(ZIII)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    iput-boolean p1, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->isEnabled:Z

    .line 22
    iput p2, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->icon:I

    .line 23
    iput p3, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->title:I

    .line 24
    iput p4, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->description:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;-><init>(ZIII)V

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->description:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->icon:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->title:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->isEnabled:Z

    return v0
.end method
