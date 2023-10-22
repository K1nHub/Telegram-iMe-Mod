.class public final Lcom/iMe/utils/helper/wallet/BackupPdfHelper;
.super Ljava/lang/Object;
.source "BackupPdfHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/BackupPdfHelper;


# direct methods
.method public static synthetic $r8$lambda$0HQo7LbHEOnOSWnSsID1MQxbsLU(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->generatePdf$lambda$4(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dJUQOICXy1r858T69tjnRhme3w(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->saveAndOpenPdf$lambda$7$lambda$6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oRhJuuebDMGjhPJwHc30-YbRumI(Ljava/io/File;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->saveAndOpenPdf$lambda$9$lambda$8(Ljava/io/File;Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/BackupPdfHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final generatePdf$lambda$4(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 12

    const-string v0, "$parentActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$qrBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$secretWords"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 55
    new-instance v1, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v2, 0x253

    const/16 v3, 0x34a

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;

    move-result-object v3

    .line 59
    iget-object v4, v3, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->textWalletAddress:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v4, p1

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    .line 61
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    .line 63
    div-int/lit8 v6, v5, 0x2

    if-eqz v4, :cond_0

    rem-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_0
    move v5, p1

    :goto_1
    add-int/2addr v5, v6

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, p1

    :cond_1
    :goto_2
    if-ge v8, v5, :cond_3

    if-nez v4, :cond_2

    move v9, p1

    goto :goto_3

    :cond_2
    move v9, v6

    :goto_3
    add-int/2addr v9, v8

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    if-eq v8, v5, :cond_1

    const-string v9, "\n"

    .line 69
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 72
    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->textColumnLeft:Landroid/widget/TextView;

    goto :goto_4

    :cond_4
    iget-object v5, v3, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->textColumnRight:Landroid/widget/TextView;

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_5
    iget-object p3, v3, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->imageQr:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkWalletBackupPdfTemplateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 77
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageWidth()I

    move-result p3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 78
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 76
    invoke-virtual {p2, p3, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 80
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, p1, p1, p3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 84
    sget-object p1, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/BackupPdfHelper;

    invoke-direct {p1, v0, p0}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->saveAndOpenPdf(Landroid/graphics/pdf/PdfDocument;Landroid/app/Activity;)V

    return-void
.end method

.method private final saveAndOpenPdf(Landroid/graphics/pdf/PdfDocument;Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x3

    .line 97
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 98
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "iMeWallet_Seed_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/iMe/common/Constants;->INSTANCE:Lcom/iMe/common/Constants;

    invoke-virtual {v0}, Lcom/iMe/common/Constants;->getDateDotsFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 100
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 99
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".pdf"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 104
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 105
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v2, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 114
    :cond_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lkotlin/Unit;

    .line 115
    new-instance p1, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, p2}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private static final saveAndOpenPdf$lambda$7$lambda$6(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 110
    sget p0, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v0, "ErrorOccurred"

    .line 108
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "it.message ?: LocaleCont\u2026red\n                    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final saveAndOpenPdf$lambda$9$lambda$8(Ljava/io/File;Landroid/app/Activity;)V
    .locals 3

    const-string v0, "$file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pdf"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    return-void
.end method


# virtual methods
.method public final generatePdf(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "secretWords"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "qrBitmap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 53
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
