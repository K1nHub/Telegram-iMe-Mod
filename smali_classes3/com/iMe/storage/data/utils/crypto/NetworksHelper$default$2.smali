.class final Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworksHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/utils/crypto/NetworksHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 23
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->access$createDefaultNetwork(Lcom/iMe/storage/data/utils/crypto/NetworksHelper;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper$default$2;->invoke()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method