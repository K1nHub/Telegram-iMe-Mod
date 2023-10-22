.class public final Lcom/iMe/utils/validator/wallet/CustomPriceValidator;
.super Ljava/lang/Object;
.source "CustomPriceValidator.kt"


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method
