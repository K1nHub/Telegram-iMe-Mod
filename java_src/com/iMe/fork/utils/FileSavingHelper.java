package com.iMe.fork.utils;

import android.net.Uri;
import androidx.documentfile.provider.DocumentFile;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ThrowableExtKt;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.ByteStreamsKt;
import kotlin.p034io.CloseableKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC$Document;
import timber.log.Timber;
/* compiled from: FileSavingHelper.kt */
/* loaded from: classes3.dex */
public final class FileSavingHelper {
    public static final FileSavingHelper INSTANCE = new FileSavingHelper();

    private FileSavingHelper() {
    }

    public static final boolean isDirectoryAvailableForSaving(Uri directoryUri) {
        Intrinsics.checkNotNullParameter(directoryUri, "directoryUri");
        DocumentFile fromTreeUri = DocumentFile.fromTreeUri(ApplicationLoader.applicationContext, directoryUri);
        return fromTreeUri != null && fromTreeUri.isDirectory() && fromTreeUri.canRead() && fromTreeUri.canWrite();
    }

    public static final void saveDocumentFileToCustomDirectory(final File originalFile, final TLRPC$Document document, final String fileName, final Uri directoryUri, final boolean z) {
        Intrinsics.checkNotNullParameter(originalFile, "originalFile");
        Intrinsics.checkNotNullParameter(document, "document");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(directoryUri, "directoryUri");
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.utils.FileSavingHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FileSavingHelper.saveDocumentFileToCustomDirectory$lambda$6(directoryUri, document, fileName, originalFile, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveDocumentFileToCustomDirectory$lambda$6(Uri directoryUri, TLRPC$Document document, String fileName, File originalFile, boolean z) {
        DocumentFile createFile;
        Object m1601constructorimpl;
        Long l;
        Intrinsics.checkNotNullParameter(directoryUri, "$directoryUri");
        Intrinsics.checkNotNullParameter(document, "$document");
        Intrinsics.checkNotNullParameter(fileName, "$fileName");
        Intrinsics.checkNotNullParameter(originalFile, "$originalFile");
        DocumentFile fromTreeUri = DocumentFile.fromTreeUri(ApplicationLoader.applicationContext, directoryUri);
        if (fromTreeUri == null || (createFile = fromTreeUri.createFile(document.mime_type, fileName)) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.Companion;
            FileInputStream fileInputStream = new FileInputStream(originalFile.getAbsolutePath());
            OutputStream output = ApplicationLoader.applicationContext.getContentResolver().openOutputStream(createFile.getUri());
            if (output != null) {
                Intrinsics.checkNotNullExpressionValue(output, "output");
                l = Long.valueOf(ByteStreamsKt.copyTo$default(fileInputStream, output, 0, 2, null));
                CloseableKt.closeFinally(output, null);
            } else {
                l = null;
            }
            CloseableKt.closeFinally(fileInputStream, null);
            m1601constructorimpl = Result.m1601constructorimpl(l);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1601constructorimpl = Result.m1601constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable m1602exceptionOrNullimpl = Result.m1602exceptionOrNullimpl(m1601constructorimpl);
        if (m1602exceptionOrNullimpl != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.utils.FileSavingHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ThrowableExtKt.showToast(m1602exceptionOrNullimpl);
                }
            });
            Timber.m6e(m1602exceptionOrNullimpl);
        }
        if (Result.m1604isSuccessimpl(m1601constructorimpl)) {
            Long l2 = (Long) m1601constructorimpl;
            if (z) {
                originalFile.delete();
            }
            AndroidUtilities.runOnUIThread(FileSavingHelper$$ExternalSyntheticLambda2.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveDocumentFileToCustomDirectory$lambda$6$lambda$5$lambda$4() {
        String internalString = LocaleController.getInternalString(C3417R.string.message_document_file_save_as_success);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ent_file_save_as_success)");
        ContextExtKt.toast(internalString);
    }
}
