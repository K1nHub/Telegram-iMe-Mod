.class public final Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;
.super Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokensSettingsChanged"
.end annotation


# instance fields
.field private final isFromSearch:Z

.field private final sourceClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "sourceClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;->sourceClassName:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;->isFromSearch:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getSourceClassName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final isFromSearch()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;->isFromSearch:Z

    return v0
.end method
