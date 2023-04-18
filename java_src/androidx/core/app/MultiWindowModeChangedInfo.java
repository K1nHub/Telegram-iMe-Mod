package androidx.core.app;

import android.content.res.Configuration;
/* loaded from: classes.dex */
public final class MultiWindowModeChangedInfo {
    private final boolean mIsInMultiWindowMode;

    public MultiWindowModeChangedInfo(boolean z) {
        this.mIsInMultiWindowMode = z;
    }

    public MultiWindowModeChangedInfo(boolean z, Configuration configuration) {
        this.mIsInMultiWindowMode = z;
    }

    public boolean isInMultiWindowMode() {
        return this.mIsInMultiWindowMode;
    }
}
