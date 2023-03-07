.class public final Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;
.super Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Valid"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;

    invoke-direct {v0}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;-><init>()V

    sput-object v0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;->INSTANCE:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
