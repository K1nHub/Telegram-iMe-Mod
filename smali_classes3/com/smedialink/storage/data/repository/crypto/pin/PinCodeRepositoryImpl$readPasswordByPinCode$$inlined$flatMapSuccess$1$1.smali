.class public final Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;
.super Ljava/lang/Object;
.source "FirebaseExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1$1\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n8#2:87\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1$1\n*L\n83#1:87\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/pin/PinCodeRepositoryImpl$readPasswordByPinCode$$inlined$flatMapSuccess$1$1;->apply(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
