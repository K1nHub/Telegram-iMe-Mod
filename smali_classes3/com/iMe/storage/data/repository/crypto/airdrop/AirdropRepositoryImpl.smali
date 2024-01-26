.class public final Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;
.super Ljava/lang/Object;
.source "AirdropRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirdropRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirdropRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,95:1\n70#2:96\n70#2:98\n70#2:100\n26#3:97\n26#3:99\n26#3:101\n*S KotlinDebug\n*F\n+ 1 AirdropRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n*L\n38#1:96\n62#1:98\n89#1:100\n48#1:97\n75#1:99\n90#1:101\n*E\n"
.end annotation


# instance fields
.field private final airdropApi:Lcom/iMe/storage/data/network/api/own/AirdropApi;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/AirdropApi;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "airdropApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "errorHandler"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->airdropApi:Lcom/iMe/storage/data/network/api/own/AirdropApi;

    .line 24
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method
