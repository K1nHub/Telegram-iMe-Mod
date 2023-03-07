.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createButtonTextView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1387:1\n1858#2,3:1388\n1547#2:1391\n1618#2,3:1392\n*S KotlinDebug\n*F\n+ 1 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1\n*L\n752#1:1388,3\n774#1:1391\n774#1:1392,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public static synthetic $r8$lambda$CWoh0-BXwQ-9boOi6mj04_EthBw()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->invoke$lambda-2$lambda-1()V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-2$lambda-1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 727
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 729
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$hideHint(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 730
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object p1

    .line 731
    instance-of v0, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 732
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 733
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 734
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 735
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    .line 736
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v2

    .line 737
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object v3

    check-cast v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 738
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object v4

    check-cast v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getPin()Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-direct {v1, v2, v3, v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 741
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$setFragmentToRemove$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 742
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 733
    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_4

    .line 745
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_4

    .line 748
    :cond_3
    instance-of v0, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v0, :cond_8

    .line 749
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$checkEditTexts(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 752
    :cond_4
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCheckWordIndices$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 1859
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 753
    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object v5

    check-cast v5, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v5}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 755
    new-instance p1, Lcom/smedialink/model/dialog/DialogModel;

    .line 756
    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_alert_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    sget v3, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_alert_text:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    sget v4, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_alert_button_see:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 759
    sget v5, Lorg/telegram/messenger/R$string;->wallet_backup_test_time_alert_button_try:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    .line 755
    invoke-direct {p1, v1, v3, v4, v5}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1$$ExternalSyntheticLambda1;

    .line 762
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 754
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->showAlertDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;Z)V

    return-void

    :cond_6
    move v1, v4

    goto :goto_1

    .line 768
    :cond_7
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->onSecretWordsCheckCompleted()V

    goto :goto_4

    .line 770
    :cond_8
    instance-of v0, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v0, :cond_b

    .line 771
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$checkEditTexts(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 774
    :cond_9
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getEditTexts$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;

    .line 774
    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeed(Ljava/lang/String;)V

    goto :goto_4

    .line 776
    :cond_b
    instance-of v0, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Ready;

    if-eqz v0, :cond_c

    goto :goto_3

    .line 777
    :cond_c
    instance-of v1, p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;

    :goto_3
    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createButtonTextView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_d
    :goto_4
    return-void
.end method
