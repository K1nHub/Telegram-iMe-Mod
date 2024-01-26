.class public final Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;
.super Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.source "NetworkChoosePurpose.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receive"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;->INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
