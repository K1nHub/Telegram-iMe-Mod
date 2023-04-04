.class public final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "SecretWordsCountBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;"
        }
    .end annotation

    const-string v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onWordsCountSelected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    invoke-direct {v0, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
