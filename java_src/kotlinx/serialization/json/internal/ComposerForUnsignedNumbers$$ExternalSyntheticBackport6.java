package kotlinx.serialization.json.internal;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import kotlin.text.UStringsKt$$ExternalSyntheticBackport3;
/* loaded from: classes4.dex */
public final /* synthetic */ class ComposerForUnsignedNumbers$$ExternalSyntheticBackport6 {
    /* renamed from: m */
    public static /* synthetic */ String m124m(long j, int i) {
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return SessionDescription.SUPPORTED_SDP_VERSION;
        }
        if (i2 > 0) {
            return Long.toString(j, i);
        }
        i = (i < 2 || i > 36) ? 10 : 10;
        int i3 = 64;
        char[] cArr = new char[64];
        int i4 = i - 1;
        if ((i & i4) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i3--;
                cArr[i3] = Character.forDigit(((int) j) & i4, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            long m134m = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : UStringsKt$$ExternalSyntheticBackport3.m134m(j, i);
            long j2 = i;
            i3 = 63;
            cArr[63] = Character.forDigit((int) (j - (m134m * j2)), i);
            while (m134m > 0) {
                i3--;
                cArr[i3] = Character.forDigit((int) (m134m % j2), i);
                m134m /= j2;
            }
        }
        return new String(cArr, i3, 64 - i3);
    }
}
