package okhttp3.internal.http2;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
/* compiled from: Header.kt */
/* loaded from: classes4.dex */
public final class Header {
    public static final ByteString PSEUDO_PREFIX;
    public static final ByteString RESPONSE_STATUS;
    public static final ByteString TARGET_AUTHORITY;
    public static final ByteString TARGET_METHOD;
    public static final ByteString TARGET_PATH;
    public static final ByteString TARGET_SCHEME;
    public final int hpackSize;
    public final ByteString name;
    public final ByteString value;

    public final ByteString component1() {
        return this.name;
    }

    public final ByteString component2() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Header) {
                Header header = (Header) obj;
                return Intrinsics.areEqual(this.name, header.name) && Intrinsics.areEqual(this.value, header.value);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        ByteString byteString = this.name;
        int hashCode = (byteString != null ? byteString.hashCode() : 0) * 31;
        ByteString byteString2 = this.value;
        return hashCode + (byteString2 != null ? byteString2.hashCode() : 0);
    }

    public Header(ByteString name, ByteString value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.name = name;
        this.value = value;
        this.hpackSize = name.size() + 32 + value.size();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Header(java.lang.String r2, java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            okio.ByteString$Companion r0 = okio.ByteString.Companion
            okio.ByteString r2 = r0.encodeUtf8(r2)
            okio.ByteString r3 = r0.encodeUtf8(r3)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Header.<init>(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(ByteString name, String value) {
        this(name, ByteString.Companion.encodeUtf8(value));
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    public String toString() {
        return this.name.utf8() + ": " + this.value.utf8();
    }

    /* compiled from: Header.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        ByteString.Companion companion = ByteString.Companion;
        PSEUDO_PREFIX = companion.encodeUtf8(":");
        RESPONSE_STATUS = companion.encodeUtf8(":status");
        TARGET_METHOD = companion.encodeUtf8(":method");
        TARGET_PATH = companion.encodeUtf8(":path");
        TARGET_SCHEME = companion.encodeUtf8(":scheme");
        TARGET_AUTHORITY = companion.encodeUtf8(":authority");
    }
}
