package com.google.firebase.firestore.util;

import android.os.Handler;
import android.os.Looper;
import com.google.cloud.datastore.core.number.NumberComparisonHelper;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.protobuf.ByteString;
import io.grpc.Status;
import io.grpc.StatusException;
import java.security.SecureRandom;
import java.util.Comparator;
/* loaded from: classes3.dex */
public class Util {
    private static final Comparator COMPARABLE_COMPARATOR;

    public static int compareBooleans(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public static int compareIntegers(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    static {
        new SecureRandom();
        COMPARABLE_COMPARATOR = new Comparator<Comparable<?>>() { // from class: com.google.firebase.firestore.util.Util.1
            @Override // java.util.Comparator
            public /* bridge */ /* synthetic */ int compare(Comparable<?> comparable, Comparable<?> comparable2) {
                return compare2((Comparable) comparable, (Comparable) comparable2);
            }

            /* renamed from: compare  reason: avoid collision after fix types in other method */
            public int compare2(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public static int compareLongs(long j, long j2) {
        return NumberComparisonHelper.compareLongs(j, j2);
    }

    public static int compareDoubles(double d, double d2) {
        return NumberComparisonHelper.firestoreCompareDoubles(d, d2);
    }

    public static int compareMixed(double d, long j) {
        return NumberComparisonHelper.firestoreCompareDoubleWithLong(d, j);
    }

    public static <T extends Comparable<T>> Comparator<T> comparator() {
        return COMPARABLE_COMPARATOR;
    }

    public static FirebaseFirestoreException exceptionFromStatus(Status status) {
        StatusException asException = status.asException();
        return new FirebaseFirestoreException(asException.getMessage(), FirebaseFirestoreException.Code.fromValue(status.getCode().value()), asException);
    }

    public static String toDebugString(ByteString byteString) {
        int size = byteString.size();
        StringBuilder sb = new StringBuilder(size * 2);
        for (int i = 0; i < size; i++) {
            int byteAt = byteString.byteAt(i) & 255;
            sb.append(Character.forDigit(byteAt >>> 4, 16));
            sb.append(Character.forDigit(byteAt & 15, 16));
        }
        return sb.toString();
    }

    public static void crashMainThread(final RuntimeException runtimeException) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.firebase.firestore.util.Util$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Util.lambda$crashMainThread$1(runtimeException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$crashMainThread$1(RuntimeException runtimeException) {
        throw runtimeException;
    }

    public static int compareByteStrings(ByteString byteString, ByteString byteString2) {
        int min = Math.min(byteString.size(), byteString2.size());
        for (int i = 0; i < min; i++) {
            int byteAt = byteString.byteAt(i) & 255;
            int byteAt2 = byteString2.byteAt(i) & 255;
            if (byteAt < byteAt2) {
                return -1;
            }
            if (byteAt > byteAt2) {
                return 1;
            }
        }
        return compareIntegers(byteString.size(), byteString2.size());
    }
}
