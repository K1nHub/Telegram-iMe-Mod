.class Lorg/telegram/ui/Cells/TextSelectionHelper$4;
.super Ljava/lang/Object;
.source "TextSelectionHelper.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;->createActionCallback()Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

.field private translateFromLanguage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2Vw5HBjGMz71t-WI-STHkesJXfY(Lorg/telegram/ui/Cells/TextSelectionHelper$4;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onActionItemClicked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$HNmy8NxoYpVZPKhfkvm9Lpq2EA0(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onPrepareActionMode$1(Landroid/view/Menu;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOvuGBA1_SKPBnwTbySc7nsJ8k8(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->lambda$onPrepareActionMode$0(Landroid/view/Menu;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1368
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onActionItemClicked$2()V
    .locals 1

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$400(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return-void
.end method

.method private synthetic lambda$onPrepareActionMode$0(Landroid/view/Menu;Ljava/lang/String;)V
    .locals 0

    .line 1353
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1354
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    return-void
.end method

.method private synthetic lambda$onPrepareActionMode$1(Landroid/view/Menu;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "mlkit: failed to detect language in selection"

    .line 1356
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1357
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 1358
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1359
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    return-void
.end method

.method private updateTranslateButton(Landroid/view/Menu;)V
    .locals 2

    .line 1370
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1371
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    .line 1372
    invoke-static {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1375
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    const-string v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    :cond_0
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1377
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1371
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1384
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelectionMode()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1388
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v1, Lcom/smedialink/common/IdFabric$Menu;->QUOTE:I

    if-ne p1, v1, :cond_2

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1392
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$500(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onQuote(Ljava/lang/String;)V

    .line 1393
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1200(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    :cond_1
    return v0

    .line 1398
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    const p2, 0x102001f

    if-eq p1, p2, :cond_4

    const p2, 0x1020021

    if-eq p1, p2, :cond_3

    .line 1421
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return v0

    .line 1400
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2900(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0

    .line 1403
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    .line 1407
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iput v1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1408
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1200(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1410
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$400(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0

    .line 1414
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1415
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 1416
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;)V

    invoke-interface {p2, v1, v2, p1, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;->run(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1418
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$1200(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 p1, 0x0

    const v0, 0x1020021

    const v1, 0x1040001

    .line 1333
    invoke-interface {p2, p1, v0, p1, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x102001f

    const/4 v1, 0x1

    const v2, 0x104000d

    .line 1334
    invoke-interface {p2, p1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1335
    sget v0, Lorg/telegram/messenger/R$string;->TranslateMessage:I

    const-string v2, "TranslateMessage"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-interface {p2, p1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1336
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->QUOTE:I

    sget v3, Lorg/telegram/messenger/R$string;->chat_menu_quote:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p1, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1428
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1342
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-object v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 1343
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->multiselect:Z

    if-nez v3, :cond_1

    iget v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-gtz v3, :cond_0

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v1

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 1347
    :cond_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1345
    :cond_1
    :goto_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const/4 p1, 0x3

    .line 1349
    invoke-interface {p2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getDialogId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getDialogId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isShowQuote()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1351
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->access$2800(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->this$0:Lorg/telegram/ui/Cells/TextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;)V

    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$4;Landroid/view/Menu;)V

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 1362
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->translateFromLanguage:Ljava/lang/String;

    .line 1363
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;->updateTranslateButton(Landroid/view/Menu;)V

    :goto_2
    return v1
.end method
