.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;-><init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ldrinkless/org/ton/Client;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;


# direct methods
.method public static synthetic $r8$lambda$zIT89cfNBGFneBMmcPSi1tJ3vJM(Ldrinkless/org/ton/TonApi$Object;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;->invoke$lambda$0(Ldrinkless/org/ton/TonApi$Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ldrinkless/org/ton/TonApi$Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final invoke()Ldrinkless/org/ton/Client;
    .locals 2

    sget-object v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1, v1}, Ldrinkless/org/ton/Client;->create(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)Ldrinkless/org/ton/Client;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$client$2;->invoke()Ldrinkless/org/ton/Client;

    move-result-object v0

    return-object v0
.end method
