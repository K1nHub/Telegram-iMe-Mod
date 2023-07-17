.class public final Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;
.super Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;
.source "CreatePinCodeScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;

    invoke-direct {v0}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;->INSTANCE:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
