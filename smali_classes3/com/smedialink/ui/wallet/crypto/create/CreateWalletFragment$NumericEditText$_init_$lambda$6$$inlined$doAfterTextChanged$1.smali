.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n1246#2,20:98\n71#3:118\n77#4:119\n*E\n"
.end annotation


# instance fields
.field final synthetic $ignoreTextChange$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

.field final synthetic this$1$inlined:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->$ignoreTextChange$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$1$inlined:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->$ignoreTextChange$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getGlobalIgnoreTextChange$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->$ignoreTextChange$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 102
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v1, [C

    const-string v4, " "

    invoke-static {v4}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v3, v5

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v5

    .line 104
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 105
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    .line 107
    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->$ignoreTextChange$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 113
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$1$inlined:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->access$updateClearButton(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    .line 114
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$1$inlined:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->access$getIgnoreSearch$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getHintAdapter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1;->this$1$inlined:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;->searchHintsFor(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
