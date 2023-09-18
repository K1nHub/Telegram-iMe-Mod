package com.google.common.p019io;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
/* renamed from: com.google.common.io.BaseEncoding */
/* loaded from: classes4.dex */
public abstract class BaseEncoding {
    private static final BaseEncoding BASE64 = new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    abstract int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException;

    abstract void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    abstract int maxDecodedSize(int i);

    abstract int maxEncodedSize(int i);

    public abstract BaseEncoding omitPadding();

    abstract CharSequence trimTrailingPadding(CharSequence charSequence);

    BaseEncoding() {
    }

    /* renamed from: com.google.common.io.BaseEncoding$DecodingException */
    /* loaded from: classes4.dex */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }
    }

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(maxEncodedSize(i2));
        try {
            encodeTo(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    private static byte[] extract(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public final byte[] decode(CharSequence charSequence) {
        try {
            return decodeChecked(charSequence);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    final byte[] decodeChecked(CharSequence charSequence) throws DecodingException {
        CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
        byte[] bArr = new byte[maxDecodedSize(trimTrailingPadding.length())];
        return extract(bArr, decodeTo(bArr, trimTrailingPadding));
    }

    static {
        new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        new Base16Encoding("base16()", "0123456789ABCDEF");
    }

    public static BaseEncoding base64() {
        return BASE64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.io.BaseEncoding$Alphabet */
    /* loaded from: classes4.dex */
    public static final class Alphabet {
        final int bitsPerChar;
        final int bytesPerChunk;
        private final char[] chars;
        final int charsPerChunk;
        private final byte[] decodabet;
        final int mask;
        private final String name;
        private final boolean[] validPadding;

        Alphabet(String str, char[] cArr) {
            this.name = (String) Preconditions.checkNotNull(str);
            this.chars = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int log2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.bitsPerChar = log2;
                int min = Math.min(8, Integer.lowestOneBit(log2));
                try {
                    this.charsPerChunk = 8 / min;
                    this.bytesPerChunk = log2 / min;
                    this.mask = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                        Preconditions.checkArgument(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.decodabet = bArr;
                    boolean[] zArr = new boolean[this.charsPerChunk];
                    for (int i2 = 0; i2 < this.bytesPerChunk; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                    }
                    this.validPadding = zArr;
                } catch (ArithmeticException e) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
                }
            } catch (ArithmeticException e2) {
                int length = cArr.length;
                StringBuilder sb = new StringBuilder(35);
                sb.append("Illegal alphabet length ");
                sb.append(length);
                throw new IllegalArgumentException(sb.toString(), e2);
            }
        }

        char encode(int i) {
            return this.chars[i];
        }

        boolean isValidPaddingStartPosition(int i) {
            return this.validPadding[i % this.charsPerChunk];
        }

        int decode(char c) throws DecodingException {
            if (c > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b = this.decodabet[c];
            if (b == -1) {
                if (c <= ' ' || c == 127) {
                    String valueOf2 = String.valueOf(Integer.toHexString(c));
                    throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
                }
                StringBuilder sb = new StringBuilder(25);
                sb.append("Unrecognized character: ");
                sb.append(c);
                throw new DecodingException(sb.toString());
            }
            return b;
        }

        public boolean matches(char c) {
            byte[] bArr = this.decodabet;
            return c < bArr.length && bArr[c] != -1;
        }

        public String toString() {
            return this.name;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Alphabet) {
                return Arrays.equals(this.chars, ((Alphabet) obj).chars);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.chars);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$StandardBaseEncoding */
    /* loaded from: classes4.dex */
    static class StandardBaseEncoding extends BaseEncoding {
        final Alphabet alphabet;
        final Character paddingChar;

        StandardBaseEncoding(String str, String str2, Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        StandardBaseEncoding(Alphabet alphabet, Character ch) {
            this.alphabet = (Alphabet) Preconditions.checkNotNull(alphabet);
            Preconditions.checkArgument(ch == null || !alphabet.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.paddingChar = ch;
        }

        @Override // com.google.common.p019io.BaseEncoding
        int maxEncodedSize(int i) {
            Alphabet alphabet = this.alphabet;
            return alphabet.charsPerChunk * IntMath.divide(i, alphabet.bytesPerChunk, RoundingMode.CEILING);
        }

        @Override // com.google.common.p019io.BaseEncoding
        void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                encodeChunkTo(appendable, bArr, i + i3, Math.min(this.alphabet.bytesPerChunk, i2 - i3));
                i3 += this.alphabet.bytesPerChunk;
            }
        }

        void encodeChunkTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            Preconditions.checkArgument(i2 <= this.alphabet.bytesPerChunk);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.alphabet.bitsPerChar;
            while (i3 < i2 * 8) {
                Alphabet alphabet = this.alphabet;
                appendable.append(alphabet.encode(((int) (j >>> (i5 - i3))) & alphabet.mask));
                i3 += this.alphabet.bitsPerChar;
            }
            if (this.paddingChar != null) {
                while (i3 < this.alphabet.bytesPerChunk * 8) {
                    appendable.append(this.paddingChar.charValue());
                    i3 += this.alphabet.bitsPerChar;
                }
            }
        }

        @Override // com.google.common.p019io.BaseEncoding
        int maxDecodedSize(int i) {
            return (int) (((this.alphabet.bitsPerChar * i) + 7) / 8);
        }

        @Override // com.google.common.p019io.BaseEncoding
        CharSequence trimTrailingPadding(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            Character ch = this.paddingChar;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.p019io.BaseEncoding
        int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Alphabet alphabet;
            Preconditions.checkNotNull(bArr);
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(trimTrailingPadding.length())) {
                int length = trimTrailingPadding.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < trimTrailingPadding.length()) {
                long j = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    alphabet = this.alphabet;
                    if (i3 >= alphabet.charsPerChunk) {
                        break;
                    }
                    j <<= alphabet.bitsPerChar;
                    if (i + i3 < trimTrailingPadding.length()) {
                        j |= this.alphabet.decode(trimTrailingPadding.charAt(i4 + i));
                        i4++;
                    }
                    i3++;
                }
                int i5 = alphabet.bytesPerChunk;
                int i6 = (i5 * 8) - (i4 * alphabet.bitsPerChar);
                int i7 = (i5 - 1) * 8;
                while (i7 >= i6) {
                    bArr[i2] = (byte) ((j >>> i7) & 255);
                    i7 -= 8;
                    i2++;
                }
                i += this.alphabet.charsPerChunk;
            }
            return i2;
        }

        @Override // com.google.common.p019io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.paddingChar == null ? this : newInstance(this.alphabet, null);
        }

        BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.alphabet.toString());
            if (8 % this.alphabet.bitsPerChar != 0) {
                if (this.paddingChar == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.paddingChar);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (obj instanceof StandardBaseEncoding) {
                StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
                return this.alphabet.equals(standardBaseEncoding.alphabet) && Objects.equal(this.paddingChar, standardBaseEncoding.paddingChar);
            }
            return false;
        }

        public int hashCode() {
            return this.alphabet.hashCode() ^ Objects.hashCode(this.paddingChar);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$Base16Encoding */
    /* loaded from: classes4.dex */
    static final class Base16Encoding extends StandardBaseEncoding {
        final char[] encoding;

        Base16Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()));
        }

        private Base16Encoding(Alphabet alphabet) {
            super(alphabet, null);
            this.encoding = new char[512];
            Preconditions.checkArgument(alphabet.chars.length == 16);
            for (int i = 0; i < 256; i++) {
                this.encoding[i] = alphabet.encode(i >>> 4);
                this.encoding[i | 256] = alphabet.encode(i & 15);
            }
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding, com.google.common.p019io.BaseEncoding
        void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.encoding[i4]);
                appendable.append(this.encoding[i4 | 256]);
            }
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding, com.google.common.p019io.BaseEncoding
        int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 == 1) {
                int length = charSequence.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.alphabet.decode(charSequence.charAt(i)) << 4) | this.alphabet.decode(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding
        BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new Base16Encoding(alphabet);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$Base64Encoding */
    /* loaded from: classes4.dex */
    static final class Base64Encoding extends StandardBaseEncoding {
        Base64Encoding(String str, String str2, Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        private Base64Encoding(Alphabet alphabet, Character ch) {
            super(alphabet, ch);
            Preconditions.checkArgument(alphabet.chars.length == 64);
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding, com.google.common.p019io.BaseEncoding
        void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            int i3 = i + i2;
            Preconditions.checkPositionIndexes(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.alphabet.encode(i6 >>> 18));
                appendable.append(this.alphabet.encode((i6 >>> 12) & 63));
                appendable.append(this.alphabet.encode((i6 >>> 6) & 63));
                appendable.append(this.alphabet.encode(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                encodeChunkTo(appendable, bArr, i, i3 - i);
            }
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding, com.google.common.p019io.BaseEncoding
        int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(trimTrailingPadding.length())) {
                int length = trimTrailingPadding.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < trimTrailingPadding.length()) {
                int i3 = i + 1;
                int i4 = i3 + 1;
                int decode = (this.alphabet.decode(trimTrailingPadding.charAt(i)) << 18) | (this.alphabet.decode(trimTrailingPadding.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (decode >>> 16);
                if (i4 < trimTrailingPadding.length()) {
                    int i6 = i4 + 1;
                    int decode2 = decode | (this.alphabet.decode(trimTrailingPadding.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((decode2 >>> 8) & 255);
                    if (i6 < trimTrailingPadding.length()) {
                        i4 = i6 + 1;
                        i5 = i2 + 1;
                        bArr[i2] = (byte) ((decode2 | this.alphabet.decode(trimTrailingPadding.charAt(i6))) & 255);
                    } else {
                        i = i6;
                    }
                }
                i2 = i5;
                i = i4;
            }
            return i2;
        }

        @Override // com.google.common.p019io.BaseEncoding.StandardBaseEncoding
        BaseEncoding newInstance(Alphabet alphabet, Character ch) {
            return new Base64Encoding(alphabet, ch);
        }
    }
}
