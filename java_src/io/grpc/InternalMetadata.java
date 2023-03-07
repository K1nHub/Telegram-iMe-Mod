package io.grpc;

import com.google.android.exoplayer2.C0474C;
import com.google.common.p020io.BaseEncoding;
import io.grpc.Metadata;
import java.nio.charset.Charset;
/* loaded from: classes3.dex */
public final class InternalMetadata {
    public static final Charset US_ASCII = Charset.forName(C0474C.ASCII_NAME);
    public static final BaseEncoding BASE64_ENCODING_OMIT_PADDING = Metadata.BASE64_ENCODING_OMIT_PADDING;

    /* loaded from: classes3.dex */
    public interface TrustedAsciiMarshaller<T> extends Metadata.TrustedAsciiMarshaller<T> {
    }

    public static <T> Metadata.Key<T> keyOf(String str, TrustedAsciiMarshaller<T> trustedAsciiMarshaller) {
        boolean z = false;
        if (str != null && !str.isEmpty() && str.charAt(0) == ':') {
            z = true;
        }
        return Metadata.Key.m698of(str, z, trustedAsciiMarshaller);
    }

    public static Metadata newMetadata(byte[]... bArr) {
        return new Metadata(bArr);
    }

    public static byte[][] serialize(Metadata metadata) {
        return metadata.serialize();
    }

    public static int headerCount(Metadata metadata) {
        return metadata.headerCount();
    }
}
