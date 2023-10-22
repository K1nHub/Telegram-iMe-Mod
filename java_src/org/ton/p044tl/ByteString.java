package org.ton.p044tl;

import java.util.Arrays;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.ton.crypto.HexKt;
/* compiled from: ByteString.kt */
@Serializable(with = ByteStringSerializer.class)
/* renamed from: org.ton.tl.ByteString */
/* loaded from: classes6.dex */
public class ByteString implements Comparable<ByteString> {
    public static final Companion Companion = new Companion(null);
    private final byte[] data;
    private final Lazy hashCode$delegate;

    public ByteString(byte[] data) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Integer>() { // from class: org.ton.tl.ByteString$hashCode$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(Arrays.hashCode(ByteString.this.getData$ton_kotlin_tl()));
            }
        });
        this.hashCode$delegate = lazy;
    }

    public final byte[] getData$ton_kotlin_tl() {
        return this.data;
    }

    private final int getHashCode() {
        return ((Number) this.hashCode$delegate.getValue()).intValue();
    }

    public final int getSize() {
        return this.data.length;
    }

    public final byte getByte(int i) {
        return this.data[i];
    }

    public final byte[] toByteArray() {
        byte[] bArr = this.data;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    public final String encodeHex() {
        String upperCase = HexKt.hex(this.data).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int size = getSize();
        int size2 = other.getSize();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            byte b = (byte) (getByte(i) & (-1));
            byte b2 = (byte) (other.getByte(i) & (-1));
            if (b != b2) {
                return b < b2 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ByteString) {
            return Arrays.equals(this.data, ((ByteString) obj).data);
        }
        return false;
    }

    public int hashCode() {
        return getHashCode();
    }

    public String toString() {
        if (this.data.length <= 64) {
            StringBuilder sb = new StringBuilder();
            sb.append("[hex=");
            String upperCase = encodeHex().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            sb.append(upperCase);
            sb.append(']');
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[size=");
        sb2.append(this.data.length);
        sb2.append(" hex=");
        byte[] copyOf = Arrays.copyOf(this.data, 64);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        sb2.append(HexKt.hex(copyOf));
        sb2.append(']');
        return sb2.toString();
    }

    /* compiled from: ByteString.kt */
    /* renamed from: org.ton.tl.ByteString$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<ByteString> serializer() {
            return ByteStringSerializer.INSTANCE;
        }

        /* renamed from: of */
        public final ByteString m23of(byte... bytes) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            return new ByteString(bytes);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.m22of(bArr, i, i2);
        }

        /* renamed from: of */
        public final ByteString m22of(byte[] bArr, int i, int i2) {
            byte[] copyOfRange;
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(bArr, i, i2);
            return new ByteString(copyOfRange);
        }
    }
}
