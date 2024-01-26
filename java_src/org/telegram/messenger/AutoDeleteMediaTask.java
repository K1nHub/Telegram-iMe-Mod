package org.telegram.messenger;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import org.telegram.messenger.CacheByChatsController;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class AutoDeleteMediaTask {
    public static Set<String> usingFilePaths = Collections.newSetFromMap(new ConcurrentHashMap());

    public static void run() {
        final int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (Math.abs(currentTimeMillis - SharedConfig.lastKeepMediaCheckTime) < 86400) {
            return;
        }
        SharedConfig.lastKeepMediaCheckTime = currentTimeMillis;
        final File checkDirectory = FileLoader.checkDirectory(4);
        Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.AutoDeleteMediaTask$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AutoDeleteMediaTask.lambda$run$1(currentTimeMillis, checkDirectory);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:207:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$run$1(int r28, java.io.File r29) {
        /*
            Method dump skipped, instructions count: 842
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.AutoDeleteMediaTask.lambda$run$1(int, java.io.File):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$run$0(FileInfoInternal fileInfoInternal, FileInfoInternal fileInfoInternal2) {
        long j = fileInfoInternal2.lastUsageDate;
        long j2 = fileInfoInternal.lastUsageDate;
        if (j > j2) {
            return -1;
        }
        return j < j2 ? 1 : 0;
    }

    private static void fillFilesRecursive(File file, ArrayList<FileInfoInternal> arrayList) {
        File[] listFiles;
        if (file == null || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                fillFilesRecursive(file2, arrayList);
            } else if (!file2.getName().equals(".nomedia") && !usingFilePaths.contains(file2.getAbsolutePath())) {
                arrayList.add(new FileInfoInternal(file2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class FileInfoInternal extends CacheByChatsController.KeepMediaFile {
        final long lastUsageDate;

        private FileInfoInternal(File file) {
            super(file);
            this.lastUsageDate = Utilities.getLastUsageFileTime(file.getAbsolutePath());
        }
    }

    public static void lockFile(File file) {
        if (file == null) {
            return;
        }
        lockFile(file.getAbsolutePath());
    }

    public static void unlockFile(File file) {
        if (file == null) {
            return;
        }
        unlockFile(file.getAbsolutePath());
    }

    public static void lockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.add(str);
    }

    public static void unlockFile(String str) {
        if (str == null) {
            return;
        }
        usingFilePaths.remove(str);
    }
}
