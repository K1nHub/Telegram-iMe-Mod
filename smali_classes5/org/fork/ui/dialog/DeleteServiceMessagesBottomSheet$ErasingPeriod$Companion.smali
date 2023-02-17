.class public final Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;
.super Ljava/lang/Object;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByCode(I)Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
    .locals 6

    .line 422
    sget-object v0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->ALL_TIME:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 423
    invoke-static {}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->values()[Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 424
    invoke-static {v4}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->access$getCode$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;)I

    move-result v5

    if-ne v5, p1, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method
