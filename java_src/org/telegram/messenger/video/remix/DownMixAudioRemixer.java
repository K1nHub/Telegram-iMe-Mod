package org.telegram.messenger.video.remix;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import java.nio.ShortBuffer;
import org.telegram.messenger.LiteMode;
/* loaded from: classes4.dex */
public class DownMixAudioRemixer implements AudioRemixer {
    @Override // org.telegram.messenger.video.remix.AudioRemixer
    public void remix(ShortBuffer shortBuffer, int i, ShortBuffer shortBuffer2, int i2) {
        int min = Math.min(shortBuffer.remaining() / 2, shortBuffer2.remaining());
        for (int i3 = 0; i3 < min; i3++) {
            shortBuffer2.put(mix(shortBuffer.get(), shortBuffer.get()));
        }
    }

    @Override // org.telegram.messenger.video.remix.AudioRemixer
    public int getRemixedSize(int i, int i2, int i3) {
        return i / 2;
    }

    private short mix(short s, short s2) {
        int i;
        int i2 = s + LiteMode.FLAG_CHAT_SCALE;
        int i3 = s2 + LiteMode.FLAG_CHAT_SCALE;
        int i4 = RtpPacket.MAX_SEQUENCE_NUMBER;
        if (i2 < 32768 || i3 < 32768) {
            i = (i2 * i3) / LiteMode.FLAG_CHAT_SCALE;
        } else {
            i = (((i2 + i3) * 2) - ((i2 * i3) / LiteMode.FLAG_CHAT_SCALE)) - RtpPacket.MAX_SEQUENCE_NUMBER;
        }
        if (i != 65536) {
            i4 = i;
        }
        return (short) (i4 - LiteMode.FLAG_CHAT_SCALE);
    }
}
