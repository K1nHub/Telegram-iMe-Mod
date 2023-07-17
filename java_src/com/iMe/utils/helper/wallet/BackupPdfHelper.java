package com.iMe.utils.helper.wallet;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.pdf.PdfDocument;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.iMe.common.Constants;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.databinding.ForkWalletBackupPdfTemplateBinding;
/* compiled from: BackupPdfHelper.kt */
/* loaded from: classes4.dex */
public final class BackupPdfHelper {
    public static final BackupPdfHelper INSTANCE = new BackupPdfHelper();

    private BackupPdfHelper() {
    }

    public final void generatePdf(final Activity parentActivity, final String walletAddress, final List<String> secretWords, final Bitmap qrBitmap) {
        Intrinsics.checkNotNullParameter(parentActivity, "parentActivity");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(secretWords, "secretWords");
        Intrinsics.checkNotNullParameter(qrBitmap, "qrBitmap");
        if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            parentActivity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
        } else {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.utils.helper.wallet.BackupPdfHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BackupPdfHelper.generatePdf$lambda$4(parentActivity, walletAddress, qrBitmap, secretWords);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void generatePdf$lambda$4(Activity parentActivity, String walletAddress, Bitmap qrBitmap, List secretWords) {
        Intrinsics.checkNotNullParameter(parentActivity, "$parentActivity");
        Intrinsics.checkNotNullParameter(walletAddress, "$walletAddress");
        Intrinsics.checkNotNullParameter(qrBitmap, "$qrBitmap");
        Intrinsics.checkNotNullParameter(secretWords, "$secretWords");
        PdfDocument pdfDocument = new PdfDocument();
        PdfDocument.PageInfo create = new PdfDocument.PageInfo.Builder(595, 842, 1).create();
        PdfDocument.Page startPage = pdfDocument.startPage(create);
        ForkWalletBackupPdfTemplateBinding inflate = ForkWalletBackupPdfTemplateBinding.inflate(LayoutInflater.from(parentActivity));
        inflate.textWalletAddress.setText(walletAddress);
        int i = 0;
        while (i < 2) {
            int size = secretWords.size();
            int i2 = size / 2;
            int i3 = (i != 0 ? size % 2 : 0) + i2;
            StringBuilder sb = new StringBuilder();
            int i4 = 0;
            while (i4 < i3) {
                int i5 = (i == 0 ? 0 : i2) + i4;
                sb.append((i5 + 1) + ". " + ((String) secretWords.get(i5)));
                i4++;
                if (i4 != i3) {
                    sb.append("\n");
                }
            }
            (i == 0 ? inflate.textColumnLeft : inflate.textColumnRight).setText(sb);
            i++;
        }
        inflate.imageQr.setImageBitmap(qrBitmap);
        LinearLayout root = inflate.getRoot();
        root.measure(View.MeasureSpec.makeMeasureSpec(create.getPageWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(create.getPageHeight(), 1073741824));
        root.layout(0, 0, root.getMeasuredWidth(), root.getMeasuredHeight());
        root.draw(startPage.getCanvas());
        pdfDocument.finishPage(startPage);
        INSTANCE.saveAndOpenPdf(pdfDocument, parentActivity);
    }

    private final void saveAndOpenPdf(PdfDocument pdfDocument, final Activity activity) {
        Object m1601constructorimpl;
        File checkDirectory = FileLoader.checkDirectory(3);
        String absolutePath = checkDirectory != null ? checkDirectory.getAbsolutePath() : null;
        if (absolutePath == null) {
            return;
        }
        final File file = new File(absolutePath + File.separator + "iMeWallet_Seed_" + Constants.INSTANCE.getDateDotsFormat().format(new Date()) + ".pdf");
        try {
            Result.Companion companion = Result.Companion;
            pdfDocument.writeTo(new FileOutputStream(file));
            m1601constructorimpl = Result.m1601constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1601constructorimpl = Result.m1601constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable m1602exceptionOrNullimpl = Result.m1602exceptionOrNullimpl(m1601constructorimpl);
        if (m1602exceptionOrNullimpl != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.utils.helper.wallet.BackupPdfHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    BackupPdfHelper.saveAndOpenPdf$lambda$7$lambda$6(m1602exceptionOrNullimpl);
                }
            });
        }
        if (Result.m1604isSuccessimpl(m1601constructorimpl)) {
            Unit unit = (Unit) m1601constructorimpl;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.utils.helper.wallet.BackupPdfHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BackupPdfHelper.saveAndOpenPdf$lambda$9$lambda$8(file, activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveAndOpenPdf$lambda$7$lambda$6(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        String message = it.getMessage();
        if (message == null) {
            message = LocaleController.getString("ErrorOccurred", C3417R.string.ErrorOccurred);
        }
        Intrinsics.checkNotNullExpressionValue(message, "it.message ?: LocaleCont…, R.string.ErrorOccurred)");
        ContextExtKt.toast(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveAndOpenPdf$lambda$9$lambda$8(File file, Activity parentActivity) {
        Intrinsics.checkNotNullParameter(file, "$file");
        Intrinsics.checkNotNullParameter(parentActivity, "$parentActivity");
        AndroidUtilities.openForView(file, file.getName(), "application/pdf", parentActivity, null);
    }
}
