package org.telegram.messenger.audioinfo.mp3;

import com.google.android.exoplayer2.C0483C;
import java.nio.charset.Charset;
/* loaded from: classes4.dex */
public enum ID3v2Encoding {
    ISO_8859_1(Charset.forName(C0483C.ISO88591_NAME), 1),
    UTF_16(Charset.forName(C0483C.UTF16_NAME), 2),
    UTF_16BE(Charset.forName("UTF-16BE"), 2),
    UTF_8(Charset.forName("UTF-8"), 1);
    
    private final Charset charset;
    private final int zeroBytes;

    ID3v2Encoding(Charset charset, int i) {
        this.charset = charset;
        this.zeroBytes = i;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public int getZeroBytes() {
        return this.zeroBytes;
    }
}
