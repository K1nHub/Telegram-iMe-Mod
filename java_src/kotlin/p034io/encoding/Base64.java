package kotlin.p034io.encoding;

import java.nio.charset.Charset;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.Charsets;
/* compiled from: Base64.kt */
/* renamed from: kotlin.io.encoding.Base64 */
/* loaded from: classes4.dex */
public class Base64 {
    private final boolean isMimeScheme;
    private final boolean isUrlSafe;
    public static final Default Default = new Default(null);
    private static final byte[] mimeLineSeparatorSymbols = {13, 10};
    private static final Base64 UrlSafe = new Base64(true, false);

    public /* synthetic */ Base64(boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2);
    }

    private Base64(boolean z, boolean z2) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        if (!((z && z2) ? false : true)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return base64.encode(bArr, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
    }

    public final String encode(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, i, i2), Charsets.ISO_8859_1);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return base64.decode(bArr, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
    }

    public final byte[] decode(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, i, i2);
        int decodeSize = decodeSize(source, i, i2);
        byte[] bArr = new byte[decodeSize];
        if (decodeImpl(source, bArr, 0, i, i2) == decodeSize) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj == null) {
            int i5 = (i4 & 4) != 0 ? 0 : i;
            int i6 = (i4 & 8) != 0 ? 0 : i2;
            if ((i4 & 16) != 0) {
                i3 = bArr.length;
            }
            return base64.decodeIntoByteArray(bArr, bArr2, i5, i6, i3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
    }

    public final int decodeIntoByteArray(byte[] source, byte[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, i2, i3);
        checkDestinationBounds(destination.length, i, decodeSize(source, i2, i3));
        return decodeImpl(source, destination, i, i2, i3);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = charSequence.length();
            }
            return base64.decode(charSequence, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
    }

    public final byte[] decode(CharSequence source, int i, int i2) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof String) {
            checkSourceBounds$kotlin_stdlib(source.length(), i, i2);
            String substring = ((String) source).substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "this as java.lang.String).getBytes(charset)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, i, i2);
        }
        return decode$default(this, charsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i, int i2, int i3, int i4, Object obj) {
        if (obj == null) {
            int i5 = (i4 & 4) != 0 ? 0 : i;
            int i6 = (i4 & 8) != 0 ? 0 : i2;
            if ((i4 & 16) != 0) {
                i3 = charSequence.length();
            }
            return base64.decodeIntoByteArray(charSequence, bArr, i5, i6, i3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
    }

    public final int decodeIntoByteArray(CharSequence source, byte[] destination, int i, int i2, int i3) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (source instanceof String) {
            checkSourceBounds$kotlin_stdlib(source.length(), i2, i3);
            String substring = ((String) source).substring(i2, i3);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "this as java.lang.String).getBytes(charset)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, i2, i3);
        }
        return decodeIntoByteArray$default(this, charsToBytesImpl$kotlin_stdlib, destination, i, 0, 0, 24, (Object) null);
    }

    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, i, i2);
        byte[] bArr = new byte[encodeSize(i2 - i)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, i, i2);
        return bArr;
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(byte[] source, byte[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, i2, i3);
        checkDestinationBounds(destination.length, i, encodeSize(i3 - i2));
        byte[] bArr = this.isUrlSafe ? Base64Kt.base64UrlEncodeMap : Base64Kt.base64EncodeMap;
        int i4 = this.isMimeScheme ? 19 : Integer.MAX_VALUE;
        int i5 = i;
        while (true) {
            if (i2 + 2 >= i3) {
                break;
            }
            int min = Math.min((i3 - i2) / 3, i4);
            int i6 = 0;
            while (i6 < min) {
                int i7 = i2 + 1;
                int i8 = i7 + 1;
                int i9 = ((source[i2] & 255) << 16) | ((source[i7] & 255) << 8) | (source[i8] & 255);
                int i10 = i5 + 1;
                destination[i5] = bArr[i9 >>> 18];
                int i11 = i10 + 1;
                destination[i10] = bArr[(i9 >>> 12) & 63];
                int i12 = i11 + 1;
                destination[i11] = bArr[(i9 >>> 6) & 63];
                i5 = i12 + 1;
                destination[i12] = bArr[i9 & 63];
                i6++;
                i2 = i8 + 1;
            }
            if (min == i4 && i2 != i3) {
                int i13 = i5 + 1;
                byte[] bArr2 = mimeLineSeparatorSymbols;
                destination[i5] = bArr2[0];
                i5 = i13 + 1;
                destination[i13] = bArr2[1];
            }
        }
        int i14 = i3 - i2;
        if (i14 == 1) {
            int i15 = i2 + 1;
            int i16 = (source[i2] & 255) << 4;
            int i17 = i5 + 1;
            destination[i5] = bArr[i16 >>> 6];
            int i18 = i17 + 1;
            destination[i17] = bArr[i16 & 63];
            int i19 = i18 + 1;
            destination[i18] = 61;
            i5 = i19 + 1;
            destination[i19] = 61;
            i2 = i15;
        } else if (i14 == 2) {
            int i20 = i2 + 1;
            int i21 = i20 + 1;
            int i22 = ((source[i20] & 255) << 2) | ((source[i2] & 255) << 10);
            int i23 = i5 + 1;
            destination[i5] = bArr[i22 >>> 12];
            int i24 = i23 + 1;
            destination[i23] = bArr[(i22 >>> 6) & 63];
            int i25 = i24 + 1;
            destination[i24] = bArr[i22 & 63];
            i5 = i25 + 1;
            destination[i25] = 61;
            i2 = i21;
        }
        if (i2 == i3) {
            return i5 - i;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final int encodeSize(int i) {
        int i2 = ((i + 3) - 1) / 3;
        int i3 = (i2 * 4) + ((this.isMimeScheme ? (i2 - 1) / 19 : 0) * 2);
        if (i3 >= 0) {
            return i3;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    private final int decodeImpl(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        int checkRadix;
        int checkRadix2;
        int[] iArr = this.isUrlSafe ? Base64Kt.base64UrlDecodeMap : Base64Kt.base64DecodeMap;
        int i4 = -8;
        int i5 = i;
        int i6 = 0;
        int i7 = -8;
        int i8 = i2;
        while (true) {
            if (i8 >= i3) {
                break;
            }
            if (i7 == i4 && i8 + 3 < i3) {
                int i9 = i8 + 1;
                int i10 = iArr[bArr[i8] & 255];
                int i11 = i9 + 1;
                int i12 = iArr[bArr[i9] & 255];
                int i13 = i11 + 1;
                int i14 = iArr[bArr[i11] & 255];
                int i15 = i13 + 1;
                int i16 = (i10 << 18) | (i12 << 12) | (i14 << 6) | iArr[bArr[i13] & 255];
                if (i16 >= 0) {
                    int i17 = i5 + 1;
                    bArr2[i5] = (byte) (i16 >> 16);
                    int i18 = i17 + 1;
                    bArr2[i17] = (byte) (i16 >> 8);
                    bArr2[i18] = (byte) i16;
                    i5 = i18 + 1;
                    i8 = i15;
                    i4 = -8;
                } else {
                    i8 = i15 - 4;
                }
            }
            int i19 = bArr[i8] & 255;
            int i20 = iArr[i19];
            if (i20 >= 0) {
                i8++;
                i6 = (i6 << 6) | i20;
                i7 += 6;
                if (i7 >= 0) {
                    bArr2[i5] = (byte) (i6 >>> i7);
                    i6 &= (1 << i7) - 1;
                    i7 -= 8;
                    i5++;
                }
            } else if (i20 == -2) {
                i8 = handlePaddingSymbol(bArr, i8, i3, i7);
                break;
            } else if (!this.isMimeScheme) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid symbol '");
                sb.append((char) i19);
                sb.append("'(");
                checkRadix2 = CharsKt__CharJVMKt.checkRadix(8);
                String num = Integer.toString(i19, checkRadix2);
                Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
                sb.append(num);
                sb.append(") at index ");
                sb.append(i8);
                throw new IllegalArgumentException(sb.toString());
            } else {
                i8++;
            }
            i4 = -8;
        }
        if (i7 == -2) {
            throw new IllegalArgumentException("The last unit of input does not have enough bits");
        }
        int skipIllegalSymbolsIfMime = skipIllegalSymbolsIfMime(bArr, i8, i3);
        if (skipIllegalSymbolsIfMime >= i3) {
            return i5 - i;
        }
        int i21 = bArr[skipIllegalSymbolsIfMime] & 255;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Symbol '");
        sb2.append((char) i21);
        sb2.append("'(");
        checkRadix = CharsKt__CharJVMKt.checkRadix(8);
        String num2 = Integer.toString(i21, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num2, "toString(this, checkRadix(radix))");
        sb2.append(num2);
        sb2.append(") at index ");
        sb2.append(skipIllegalSymbolsIfMime - 1);
        sb2.append(" is prohibited after the pad character");
        throw new IllegalArgumentException(sb2.toString());
    }

    private final int decodeSize(byte[] bArr, int i, int i2) {
        int[] iArr;
        int i3 = i2 - i;
        if (i3 == 0) {
            return 0;
        }
        if (i3 == 1) {
            throw new IllegalArgumentException("Input should have at list 2 symbols for Base64 decoding, startIndex: " + i + ", endIndex: " + i2);
        }
        if (this.isMimeScheme) {
            while (true) {
                if (i >= i2) {
                    break;
                }
                iArr = Base64Kt.base64DecodeMap;
                int i4 = iArr[bArr[i] & 255];
                if (i4 < 0) {
                    if (i4 == -2) {
                        i3 -= i2 - i;
                        break;
                    }
                    i3--;
                }
                i++;
            }
        } else if (bArr[i2 - 1] == 61) {
            i3--;
            if (bArr[i2 - 2] == 61) {
                i3--;
            }
        }
        return (int) ((i3 * 6) / 8);
    }

    public final byte[] charsToBytesImpl$kotlin_stdlib(CharSequence source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length(), i, i2);
        byte[] bArr = new byte[i2 - i];
        int i3 = 0;
        while (i < i2) {
            char charAt = source.charAt(i);
            if (charAt <= 255) {
                bArr[i3] = (byte) charAt;
                i3++;
            } else {
                bArr[i3] = 63;
                i3++;
            }
            i++;
        }
        return bArr;
    }

    private final int handlePaddingSymbol(byte[] bArr, int i, int i2, int i3) {
        if (i3 == -8) {
            throw new IllegalArgumentException("Redundant pad character at index " + i);
        }
        if (i3 != -6) {
            if (i3 == -4) {
                i = skipIllegalSymbolsIfMime(bArr, i + 1, i2);
                if (i == i2 || bArr[i] != 61) {
                    throw new IllegalArgumentException("Missing one pad character at index " + i);
                }
            } else if (i3 != -2) {
                throw new IllegalStateException("Unreachable".toString());
            }
        }
        return i + 1;
    }

    private final int skipIllegalSymbolsIfMime(byte[] bArr, int i, int i2) {
        int[] iArr;
        if (this.isMimeScheme) {
            while (i < i2) {
                iArr = Base64Kt.base64DecodeMap;
                if (iArr[bArr[i] & 255] != -1) {
                    return i;
                }
                i++;
            }
            return i;
        }
        return i;
    }

    public final void checkSourceBounds$kotlin_stdlib(int i, int i2, int i3) {
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i2, i3, i);
    }

    private final void checkDestinationBounds(int i, int i2, int i3) {
        if (i2 < 0 || i2 > i) {
            throw new IndexOutOfBoundsException("destination offset: " + i2 + ", destination size: " + i);
        }
        int i4 = i2 + i3;
        if (i4 < 0 || i4 > i) {
            throw new IndexOutOfBoundsException("The destination array does not have enough capacity, destination offset: " + i2 + ", destination size: " + i + ", capacity needed: " + i3);
        }
    }

    /* compiled from: Base64.kt */
    /* renamed from: kotlin.io.encoding.Base64$Default */
    /* loaded from: classes4.dex */
    public static final class Default extends Base64 {
        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Default() {
            super(false, false, null);
        }

        public final Base64 getUrlSafe() {
            return Base64.UrlSafe;
        }
    }

    static {
        new Base64(false, true);
    }
}
