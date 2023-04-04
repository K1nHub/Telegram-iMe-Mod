package com.google.android.gms.internal.firebase_ml;

import java.io.Serializable;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p035j$.util.DesugarTimeZone;
/* loaded from: classes.dex */
public final class zzhm implements Serializable {
    private static final TimeZone GMT = DesugarTimeZone.getTimeZone("GMT");
    private static final Pattern zzzf = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");
    private final long value;
    private final boolean zzzg;
    private final int zzzh;

    public zzhm(long j) {
        this(false, 0L, null);
    }

    private zzhm(boolean z, long j, Integer num) {
        int offset;
        this.zzzg = z;
        this.value = j;
        if (z) {
            offset = 0;
        } else {
            offset = num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
        }
        this.zzzh = offset;
    }

    public final String zzgw() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.setTimeInMillis(this.value + (this.zzzh * 60000));
        zza(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        zza(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        zza(sb, gregorianCalendar.get(5), 2);
        if (!this.zzzg) {
            sb.append('T');
            zza(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            zza(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            zza(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                zza(sb, gregorianCalendar.get(14), 3);
            }
            int i = this.zzzh;
            if (i == 0) {
                sb.append('Z');
            } else {
                if (i > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                zza(sb, i / 60, 2);
                sb.append(':');
                zza(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return zzgw();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhm) {
            zzhm zzhmVar = (zzhm) obj;
            return this.zzzg == zzhmVar.zzzg && this.value == zzhmVar.value && this.zzzh == zzhmVar.zzzh;
        }
        return false;
    }

    public final int hashCode() {
        long[] jArr = new long[3];
        jArr[0] = this.value;
        jArr[1] = this.zzzg ? 1L : 0L;
        jArr[2] = this.zzzh;
        return Arrays.hashCode(jArr);
    }

    public static zzhm zzam(String str) throws NumberFormatException {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Matcher matcher = zzzf.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw new NumberFormatException(valueOf.length() != 0 ? "Invalid date/time format: ".concat(valueOf) : new String("Invalid date/time format: "));
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        int parseInt2 = Integer.parseInt(matcher.group(2)) - 1;
        int parseInt3 = Integer.parseInt(matcher.group(3));
        boolean z2 = matcher.group(4) != null;
        String group = matcher.group(9);
        boolean z3 = group != null;
        Integer num = null;
        if (z3 && !z2) {
            String valueOf2 = String.valueOf(str);
            throw new NumberFormatException(valueOf2.length() != 0 ? "Invalid date/time format, cannot specify time zone shift without specifying time: ".concat(valueOf2) : new String("Invalid date/time format, cannot specify time zone shift without specifying time: "));
        }
        if (z2) {
            int parseInt4 = Integer.parseInt(matcher.group(5));
            int parseInt5 = Integer.parseInt(matcher.group(6));
            int parseInt6 = Integer.parseInt(matcher.group(7));
            if (matcher.group(8) != null) {
                z = z2;
                i = (int) (Integer.parseInt(matcher.group(8).substring(1)) / Math.pow(10.0d, matcher.group(8).substring(1).length() - 3));
                i3 = parseInt5;
                i4 = parseInt6;
            } else {
                z = z2;
                i3 = parseInt5;
                i4 = parseInt6;
                i = 0;
            }
            i2 = parseInt4;
        } else {
            z = z2;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.set(parseInt, parseInt2, parseInt3, i2, i3, i4);
        gregorianCalendar.set(14, i);
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        if (z && z3) {
            if (Character.toUpperCase(group.charAt(0)) == 'Z') {
                i5 = 0;
            } else {
                int parseInt7 = (Integer.parseInt(matcher.group(11)) * 60) + Integer.parseInt(matcher.group(12));
                i5 = matcher.group(10).charAt(0) == '-' ? -parseInt7 : parseInt7;
                timeInMillis -= i5 * 60000;
            }
            num = Integer.valueOf(i5);
        }
        return new zzhm(!z, timeInMillis, num);
    }

    private static void zza(StringBuilder sb, int i, int i2) {
        if (i < 0) {
            sb.append('-');
            i = -i;
        }
        int i3 = i;
        while (i3 > 0) {
            i3 /= 10;
            i2--;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append('0');
        }
        if (i != 0) {
            sb.append(i);
        }
    }
}
