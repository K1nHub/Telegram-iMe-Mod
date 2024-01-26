.class public final Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;
.super Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.source "NetworkChoosePurpose.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/NetworkChoosePurpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;->INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
