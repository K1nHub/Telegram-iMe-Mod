.class public final Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;
.super Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultOrEmpty"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;

    invoke-direct {v0}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;-><init>()V

    sput-object v0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;->INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
