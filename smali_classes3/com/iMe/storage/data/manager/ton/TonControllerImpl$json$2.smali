.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;-><init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/json/Json;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2;->invoke()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/serialization/json/Json;
    .locals 3

    .line 48
    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2$1;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$json$2$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method
