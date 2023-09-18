package okio.internal;

import kotlin.jvm.internal.Intrinsics;
import okio.SegmentedByteString;
/* compiled from: SegmentedByteString.kt */
/* loaded from: classes6.dex */
public final class SegmentedByteStringKt {
    public static final int binarySearch(int[] binarySearch, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = binarySearch[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else if (i6 <= i) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final int segment(SegmentedByteString segment, int i) {
        Intrinsics.checkNotNullParameter(segment, "$this$segment");
        int binarySearch = binarySearch(segment.getDirectory$okio(), i + 1, 0, segment.getSegments$okio().length);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }
}
