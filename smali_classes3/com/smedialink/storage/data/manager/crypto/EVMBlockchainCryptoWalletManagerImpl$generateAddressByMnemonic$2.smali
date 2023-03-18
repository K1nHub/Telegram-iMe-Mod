.class final Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EVMBlockchainCryptoWalletManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl;->generateAddressByMnemonic(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEVMBlockchainCryptoWalletManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EVMBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,73:1\n8#2:74\n*S KotlinDebug\n*F\n+ 1 EVMBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2\n*L\n58#1:74\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;->INSTANCE:Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/manager/crypto/EVMBlockchainCryptoWalletManagerImpl$generateAddressByMnemonic$2;->invoke(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
