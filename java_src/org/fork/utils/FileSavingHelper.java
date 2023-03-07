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
import org.telegram.messenger.C3158R;
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
                FileSavingHelper.m2127saveDocumentFileToCustomDirectory$lambda6(directoryUri, document, fileName, originalFile, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveDocumentFileToCustomDirectory$lambda-6  reason: not valid java name */
    public static final void m2127saveDocumentFileToCustomDirectory$lambda6(Uri directoryUri, TLRPC$Document document, String fileName, File originalFile, boolean z) {
        Object m1870constructorimpl;
        Long valueOf;
        Intrinsics.checkNotNullParameter(directoryUri, "$directoryUri");
        Intrinsics.checkNotNullParameter(document, "$document");
        Intrinsics.checkNotNullParameter(fileName, "$fileName");
        Intrinsics.checkNotNullParameter(originalFile, "$originalFile");
        DocumentFile fromTreeUri = DocumentFile.fromTreeUri(ApplicationLoader.applicationContext, directoryUri);
        DocumentFile createFile = fromTreeUri == null ? null : fromTreeUri.createFile(document.mime_type, fileName);
        if (createFile == null) {
            return;
        }
        try {
            Result.Companion companion = Result.Companion;
            FileInputStream fileInputStream = new FileInputStream(originalFile.getAbsolutePath());
            OutputStream openOutputStream = ApplicationLoader.applicationContext.getContentResolver().openOutputStream(createFile.getUri());
            if (openOutputStream == null) {
                valueOf = null;
            } else {
                valueOf = Long.valueOf(ByteStreamsKt.copyTo$default(fileInputStream, openOutputStream, 0, 2, null));
                CloseableKt.closeFinally(openOutputStream, null);
            }
            CloseableKt.closeFinally(fileInputStream, null);
            m1870constructorimpl = Result.m1870constructorimpl(valueOf);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1870constructorimpl = Result.m1870constructorimpl(ResultKt.createFailure(th));
        }
        final Throwable m1871exceptionOrNullimpl = Result.m1871exceptionOrNullimpl(m1870constructorimpl);
        if (m1871exceptionOrNullimpl != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.utils.FileSavingHelper$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ThrowableExtKt.showToast(m1871exceptionOrNullimpl);
                }
            });
            Timber.m4e(m1871exceptionOrNullimpl);
        }
        if (Result.m1873isSuccessimpl(m1870constructorimpl)) {
            Long l = (Long) m1870constructorimpl;
            if (z) {
                originalFile.delete();
            }
            AndroidUtilities.runOnUIThread(FileSavingHelper$$ExternalSyntheticLambda2.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveDocumentFileToCustomDirectory$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m2128saveDocumentFileToCustomDirectory$lambda6$lambda5$lambda4() {
        String internalString = LocaleController.getInternalString(C3158R.string.message_document_file_save_as_success);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ent_file_save_as_success)");
        ContextExtKt.toast(internalString);
    }
}
