package com.google.firebase.crashlytics.internal.persistence;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import java.io.File;
/* loaded from: classes3.dex */
public class FileStoreImpl implements FileStore {
    private final Context context;

    public FileStoreImpl(Context context) {
        this.context = context;
    }

    @Override // com.google.firebase.crashlytics.internal.persistence.FileStore
    public File getFilesDir() {
        return prepare(new File(this.context.getFilesDir(), ".com.google.firebase.crashlytics"));
    }

    @Override // com.google.firebase.crashlytics.internal.persistence.FileStore
    public String getFilesDirPath() {
        return new File(this.context.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }

    File prepare(File file) {
        if (file != null) {
            if (file.exists() || file.mkdirs()) {
                return file;
            }
            Logger.getLogger().m1033w("Couldn't create file");
            return null;
        }
        Logger.getLogger().m1033w("Null File");
        return null;
    }
}
