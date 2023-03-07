.class public Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;
.super Ljava/lang/Object;
.source "FiltersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/FiltersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFilterData"
.end annotation


# instance fields
.field public chat:Lorg/telegram/tgnet/TLObject;

.field public dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

.field public final filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public final filterType:I

.field public final iconResFilled:I

.field public removable:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;I)V
    .locals 1

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    .line 799
    iput p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->iconResFilled:I

    .line 800
    iput-object p2, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->title:Ljava/lang/String;

    .line 801
    iput-object p3, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 802
    iput p4, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    return-void
.end method


# virtual methods
.method public isMedia()Z
    .locals 3

    .line 820
    iget v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSameType(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Z
    .locals 3

    .line 810
    iget v0, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    iget v1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 813
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setDate(Lorg/telegram/ui/Adapters/FiltersView$DateData;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    return-void
.end method
