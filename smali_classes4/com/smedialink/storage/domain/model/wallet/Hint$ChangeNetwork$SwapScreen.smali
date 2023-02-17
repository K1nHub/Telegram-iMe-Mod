.class public final Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;
.super Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapScreen"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "change_network_swap"

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
