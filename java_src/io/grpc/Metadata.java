package io.grpc;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.p019io.BaseEncoding;
import java.util.BitSet;
import java.util.Locale;
/* loaded from: classes4.dex */
public final class Metadata {
    public static final AsciiMarshaller<String> ASCII_STRING_MARSHALLER;
    static final BaseEncoding BASE64_ENCODING_OMIT_PADDING;

    /* loaded from: classes4.dex */
    public interface AsciiMarshaller<T> {
    }

    static {
        new Object() { // from class: io.grpc.Metadata.1
        };
        ASCII_STRING_MARSHALLER = new AsciiMarshaller<String>() { // from class: io.grpc.Metadata.2
        };
        BASE64_ENCODING_OMIT_PADDING = BaseEncoding.base64().omitPadding();
    }

    /* loaded from: classes4.dex */
    public static abstract class Key<T> {
        private static final BitSet VALID_T_CHARS = generateValidTChars();
        private final Object marshaller;
        private final String name;
        private final String originalName;

        /* renamed from: of */
        public static <T> Key<T> m997of(String str, AsciiMarshaller<T> asciiMarshaller) {
            return m996of(str, false, asciiMarshaller);
        }

        /* renamed from: of */
        static <T> Key<T> m996of(String str, boolean z, AsciiMarshaller<T> asciiMarshaller) {
            return new AsciiKey(str, z, asciiMarshaller);
        }

        private static BitSet generateValidTChars() {
            BitSet bitSet = new BitSet(127);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
                bitSet.set(c);
            }
            for (char c2 = 'a'; c2 <= 'z'; c2 = (char) (c2 + 1)) {
                bitSet.set(c2);
            }
            return bitSet;
        }

        private static String validateName(String str, boolean z) {
            Preconditions.checkNotNull(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            Preconditions.checkArgument(!str.isEmpty(), "token must have at least 1 tchar");
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!z || charAt != ':' || i != 0) {
                    Preconditions.checkArgument(VALID_T_CHARS.get(charAt), "Invalid character '%s' in key name '%s'", charAt, str);
                }
            }
            return str;
        }

        private Key(String str, boolean z, Object obj) {
            String str2 = (String) Preconditions.checkNotNull(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            this.originalName = str2;
            String validateName = validateName(str2.toLowerCase(Locale.ROOT), z);
            this.name = validateName;
            validateName.getBytes(Charsets.US_ASCII);
            this.marshaller = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.name.equals(((Key) obj).name);
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        public String toString() {
            return "Key{name='" + this.name + "'}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class AsciiKey<T> extends Key<T> {
        private final AsciiMarshaller<T> marshaller;

        private AsciiKey(String str, boolean z, AsciiMarshaller<T> asciiMarshaller) {
            super(str, z, asciiMarshaller);
            Preconditions.checkArgument(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            this.marshaller = (AsciiMarshaller) Preconditions.checkNotNull(asciiMarshaller, "marshaller");
        }
    }
}
