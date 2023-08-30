package androidx.core.app;

import android.content.res.Configuration;
/* loaded from: classes.dex */
public final class PictureInPictureModeChangedInfo {
    private final boolean mIsInPictureInPictureMode;

    public PictureInPictureModeChangedInfo(boolean z) {
        this.mIsInPictureInPictureMode = z;
    }

    public PictureInPictureModeChangedInfo(boolean z, Configuration configuration) {
        this.mIsInPictureInPictureMode = z;
    }

    public boolean isInPictureInPictureMode() {
        return this.mIsInPictureInPictureMode;
    }
}
