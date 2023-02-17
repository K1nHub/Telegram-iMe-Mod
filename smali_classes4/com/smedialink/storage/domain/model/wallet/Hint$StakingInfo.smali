.class public final Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;
.super Lcom/smedialink/storage/domain/model/wallet/Hint;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/Hint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingInfo"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "staking_info"

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/Hint;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
