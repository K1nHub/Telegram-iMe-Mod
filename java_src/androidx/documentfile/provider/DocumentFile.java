package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
/* loaded from: classes.dex */
public abstract class DocumentFile {
    public abstract boolean canRead();

    public abstract boolean canWrite();

    public abstract DocumentFile createFile(String str, String str2);

    public abstract Uri getUri();

    public abstract boolean isDirectory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DocumentFile(DocumentFile documentFile) {
    }

    public static DocumentFile fromTreeUri(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new TreeDocumentFile(null, context, DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)));
        }
        return null;
    }
}
