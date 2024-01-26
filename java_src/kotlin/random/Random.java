package kotlin.random;

import java.io.Serializable;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
/* compiled from: Random.kt */
/* loaded from: classes4.dex */
public abstract class Random {
    public static final Default Default = new Default(null);
    private static final Random defaultRandom = PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();

    public abstract int nextBits(int i);

    public abstract int nextInt();

    public int nextInt(int i) {
        return nextInt(0, i);
    }

    public int nextInt(int i, int i2) {
        int nextInt;
        int i3;
        int i4;
        int nextInt2;
        boolean z;
        RandomKt.checkRangeBounds(i, i2);
        int i5 = i2 - i;
        if (i5 > 0 || i5 == Integer.MIN_VALUE) {
            if (((-i5) & i5) == i5) {
                i4 = nextBits(RandomKt.fastLog2(i5));
            } else {
                do {
                    nextInt = nextInt() >>> 1;
                    i3 = nextInt % i5;
                } while ((nextInt - i3) + (i5 - 1) < 0);
                i4 = i3;
            }
            return i + i4;
        }
        do {
            nextInt2 = nextInt();
            z = false;
            if (i <= nextInt2 && nextInt2 < i2) {
                z = true;
                continue;
            }
        } while (!z);
        return nextInt2;
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public byte[] nextBytes(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (!(new IntRange(0, array.length).contains(i) && new IntRange(0, array.length).contains(i2))) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") or toIndex (" + i2 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (!(i <= i2)) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") must be not greater than toIndex (" + i2 + ").").toString());
        }
        int i3 = (i2 - i) / 4;
        for (int i4 = 0; i4 < i3; i4++) {
            int nextInt = nextInt();
            array[i] = (byte) nextInt;
            array[i + 1] = (byte) (nextInt >>> 8);
            array[i + 2] = (byte) (nextInt >>> 16);
            array[i + 3] = (byte) (nextInt >>> 24);
            i += 4;
        }
        int i5 = i2 - i;
        int nextBits = nextBits(i5 * 8);
        for (int i6 = 0; i6 < i5; i6++) {
            array[i + i6] = (byte) (nextBits >>> (i6 * 8));
        }
        return array;
    }

    public byte[] nextBytes(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return nextBytes(array, 0, array.length);
    }

    public byte[] nextBytes(int i) {
        return nextBytes(new byte[i]);
    }

    /* compiled from: Random.kt */
    /* loaded from: classes4.dex */
    public static final class Default extends Random implements Serializable {
        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Default() {
        }

        @Override // kotlin.random.Random
        public int nextBits(int i) {
            return Random.defaultRandom.nextBits(i);
        }

        @Override // kotlin.random.Random
        public int nextInt() {
            return Random.defaultRandom.nextInt();
        }

        @Override // kotlin.random.Random
        public int nextInt(int i) {
            return Random.defaultRandom.nextInt(i);
        }

        @Override // kotlin.random.Random
        public int nextInt(int i, int i2) {
            return Random.defaultRandom.nextInt(i, i2);
        }

        @Override // kotlin.random.Random
        public long nextLong() {
            return Random.defaultRandom.nextLong();
        }

        @Override // kotlin.random.Random
        public byte[] nextBytes(byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.defaultRandom.nextBytes(array);
        }

        @Override // kotlin.random.Random
        public byte[] nextBytes(int i) {
            return Random.defaultRandom.nextBytes(i);
        }

        @Override // kotlin.random.Random
        public byte[] nextBytes(byte[] array, int i, int i2) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.defaultRandom.nextBytes(array, i, i2);
        }
    }
}
