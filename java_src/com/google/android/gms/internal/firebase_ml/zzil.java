package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public abstract class zzil extends zzih {
    protected abstract int zza(CharSequence charSequence, int i, int i2);

    protected abstract char[] zzaf(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zza(String str, int i) {
        int length = str.length();
        char[] zzhc = zzij.zzhc();
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            if (i < length) {
                int i4 = i + 1;
                char charAt = str.charAt(i);
                char c = charAt;
                if (charAt >= 55296) {
                    c = charAt;
                    if (charAt <= 57343) {
                        if (charAt > 56319) {
                            StringBuilder sb = new StringBuilder(82);
                            sb.append("Unexpected low surrogate character '");
                            sb.append(charAt);
                            sb.append("' with value ");
                            sb.append((int) charAt);
                            sb.append(" at index ");
                            sb.append(i4 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        } else if (i4 == length) {
                            c = -charAt;
                        } else {
                            char charAt2 = str.charAt(i4);
                            if (Character.isLowSurrogate(charAt2)) {
                                c = Character.toCodePoint(charAt, charAt2);
                            } else {
                                StringBuilder sb2 = new StringBuilder(83);
                                sb2.append("Expected low surrogate but got char '");
                                sb2.append(charAt2);
                                sb2.append("' with value ");
                                sb2.append((int) charAt2);
                                sb2.append(" at index ");
                                sb2.append(i4);
                                throw new IllegalArgumentException(sb2.toString());
                            }
                        }
                    }
                }
                if (c < 0) {
                    throw new IllegalArgumentException("Trailing high surrogate at end of input");
                }
                char[] zzaf = zzaf(c);
                int i5 = (Character.isSupplementaryCodePoint(c) ? 2 : 1) + i;
                if (zzaf != null) {
                    int i6 = i - i2;
                    int i7 = i3 + i6;
                    int length2 = zzaf.length + i7;
                    if (zzhc.length < length2) {
                        zzhc = zza(zzhc, i3, ((length2 + length) - i) + 32);
                    }
                    if (i6 > 0) {
                        str.getChars(i2, i, zzhc, i3);
                        i3 = i7;
                    }
                    if (zzaf.length > 0) {
                        System.arraycopy(zzaf, 0, zzhc, i3, zzaf.length);
                        i3 += zzaf.length;
                    }
                    i2 = i5;
                }
                i = zza(str, i5, length);
            } else {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            }
        }
        int i8 = length - i2;
        if (i8 > 0) {
            int i9 = i8 + i3;
            if (zzhc.length < i9) {
                zzhc = zza(zzhc, i3, i9);
            }
            str.getChars(i2, length, zzhc, i3);
            i3 = i9;
        }
        return new String(zzhc, 0, i3);
    }

    private static char[] zza(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
