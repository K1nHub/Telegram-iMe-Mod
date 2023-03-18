.class public final Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BundleExtractorDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/ActionBar/BaseFragment;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBundleExtractorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BundleExtractorDelegate.kt\ncom/smedialink/utils/extentions/delegate/BundleExtractorDelegateKt$argument$1\n+ 2 BundleExtractorDelegate.kt\ncom/smedialink/utils/extentions/delegate/BundleExtractorDelegateKt\n*L\n1#1,49:1\n25#2,5:50\n*S KotlinDebug\n*F\n+ 1 BundleExtractorDelegate.kt\ncom/smedialink/utils/extentions/delegate/BundleExtractorDelegateKt$argument$1\n*L\n13#1:50,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $defaultValue:Ljava/lang/Object;

.field final synthetic $key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;->$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;->$defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;->invoke(Lorg/telegram/ui/ActionBar/BaseFragment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/ActionBar/BaseFragment;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;->$key:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingFragment$special$$inlined$argument$1;->$defaultValue:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 26
    instance-of p1, v1, Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has different class type"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const-string p1, "null cannot be cast to non-null type kotlin.String"

    .line 29
    invoke-static {v1, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
