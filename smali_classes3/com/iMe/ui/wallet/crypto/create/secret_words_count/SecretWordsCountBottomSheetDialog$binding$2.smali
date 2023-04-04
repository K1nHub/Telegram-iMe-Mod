.class final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SecretWordsCountBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->access$getParentActivity$p(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkSecretWordsCountLayoutBinding;

    move-result-object v0

    return-object v0
.end method
