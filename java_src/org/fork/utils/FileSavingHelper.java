package org.fork.utils;

import android.net.Uri;
import androidx.documentfile.provider.DocumentFile;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.common.ThrowableExtKt;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p035io.ByteStreamsKt;
import kotlin.p035io.CloseableKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC$Document;
import timber.log.Timber;
/* compiled from: FileSavingHelper.kt */
/* loaded from: classes4.dex */
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
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.utils.FileSavingHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FileSavingHelper.saveDocumentFileToCustomDirectory$lambda$6(directoryUri, document, fileName, originalFile, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveDocumentFileToCustomDirectory$lambda$6(Uri directoryUri, TLRPC$Document document, String fileName, File originalFile, boolean z) {
        DocumentFile createFile;
        Object m1479constructorimpl;
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
            m1479constructorimpl = Result.m1479constructorimpl(l);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1479constructorimpl = Result.m1479constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable m1480exceptionOrNullimpl = Result.m1480exceptionOrNullimpl(m1479constructorimpl);
        if (m1480exceptionOrNullimpl != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.utils.FileSavingHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ThrowableExtKt.showToast(m1480exceptionOrNullimpl);
                }
            });
            Timber.m4e(m1480exceptionOrNullimpl);
        }
        if (Result.m1482isSuccessimpl(m1479constructorimpl)) {
            Long l2 = (Long) m1479constructorimpl;
            if (z) {
                originalFile.delete();
            }
            AndroidUtilities.runOnUIThread(FileSavingHelper$$ExternalSyntheticLambda2.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveDocumentFileToCustomDirectory$lambda$6$lambda$5$lambda$4() {
        String internalString = LocaleController.getInternalString(C3301R.string.message_document_file_save_as_success);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ent_file_save_as_success)");
        ContextExtKt.toast(internalString);
    }
}
