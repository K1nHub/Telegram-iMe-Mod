.class public abstract Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;
.super Ljava/lang/Object;
.source "InterfaceSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Banners;,
        Lcom/smedialink/model/wallet/settings/InterfaceSettingItem$Quotations;
    }
.end annotation


# instance fields
.field private final description:I

.field private final icon:I

.field private final isEnabled:Z

.field private final title:I


# direct methods
.method private constructor <init>(ZIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->isEnabled:Z

    .line 9
    iput p2, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->icon:I

    .line 10
    iput p3, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->title:I

    .line 11
    iput p4, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->description:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;-><init>(ZIII)V

    return-void
.end method


# virtual methods
.method public final getDescription()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->description:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->icon:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->title:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;->isEnabled:Z

    return v0
.end method
