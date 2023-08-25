.class public abstract Lcom/iMe/model/wallet/settings/InterfaceSettingItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "InterfaceSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;,
        Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final title:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 9
    iput p1, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->icon:I

    .line 10
    iput p2, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->title:I

    .line 11
    iput p3, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->description:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->description:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->icon:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem;->title:I

    return v0
.end method
