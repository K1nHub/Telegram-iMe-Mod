.class public abstract Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid;
.super Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Invalid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;,
        Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid;-><init>(Ljava/lang/String;)V

    return-void
.end method
