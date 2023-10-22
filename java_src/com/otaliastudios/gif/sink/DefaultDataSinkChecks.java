package com.otaliastudios.gif.sink;

import android.media.MediaFormat;
/* loaded from: classes4.dex */
class DefaultDataSinkChecks {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkOutputFormat(MediaFormat mediaFormat) {
        String string = mediaFormat.getString("mime");
        if ("video/avc".equals(string)) {
            return;
        }
        throw new InvalidOutputFormatException("Video codecs other than AVC is not supported, actual mime type: " + string);
    }
}
