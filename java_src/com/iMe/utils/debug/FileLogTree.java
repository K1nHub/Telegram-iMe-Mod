package com.iMe.utils.debug;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.FileLog;
import timber.log.Timber;
/* compiled from: FileLogTree.kt */
/* loaded from: classes6.dex */
public final class FileLogTree extends Timber.Tree {
    @Override // timber.log.Timber.Tree
    protected void log(int i, String str, String message, Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (i == 5) {
            FileLog.m65w(message);
        } else if (i != 6) {
            FileLog.m70d(message);
        } else {
            if (th == null) {
                th = new Exception(message);
            }
            FileLog.m67e(th);
        }
    }
}
