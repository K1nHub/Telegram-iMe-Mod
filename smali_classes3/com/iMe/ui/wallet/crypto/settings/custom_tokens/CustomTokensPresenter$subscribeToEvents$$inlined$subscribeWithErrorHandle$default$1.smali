.class public final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->subscribeToEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CustomTokensPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter\n*L\n1#1,132:1\n186#2:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    .line 186
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->reload()V

    return-void
.end method
