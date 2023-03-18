.class public final Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->requestAddressPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$wrapAsResult$1\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,81:1\n8#2:82\n*S KotlinDebug\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$wrapAsResult$1\n*L\n79#1:82\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;

    invoke-direct {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;-><init>()V

    sput-object v0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;->INSTANCE:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ")",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;->invoke(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
