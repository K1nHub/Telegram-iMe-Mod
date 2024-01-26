package p033j$.time;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import p033j$.time.zone.C2757c;
/* renamed from: j$.time.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2723n implements Serializable {
    static {
        HashMap hashMap = new HashMap(64);
        hashMap.put("ACT", "Australia/Darwin");
        hashMap.put("AET", "Australia/Sydney");
        hashMap.put("AGT", "America/Argentina/Buenos_Aires");
        hashMap.put("ART", "Africa/Cairo");
        hashMap.put("AST", "America/Anchorage");
        hashMap.put("BET", "America/Sao_Paulo");
        hashMap.put("BST", "Asia/Dhaka");
        hashMap.put("CAT", "Africa/Harare");
        hashMap.put("CNT", "America/St_Johns");
        hashMap.put("CST", "America/Chicago");
        hashMap.put("CTT", "Asia/Shanghai");
        hashMap.put("EAT", "Africa/Addis_Ababa");
        hashMap.put("ECT", "Europe/Paris");
        hashMap.put("IET", "America/Indiana/Indianapolis");
        hashMap.put("IST", "Asia/Kolkata");
        hashMap.put("JST", "Asia/Tokyo");
        hashMap.put("MIT", "Pacific/Apia");
        hashMap.put("NET", "Asia/Yerevan");
        hashMap.put("NST", "Pacific/Auckland");
        hashMap.put("PLT", "Asia/Karachi");
        hashMap.put("PNT", "America/Phoenix");
        hashMap.put("PRT", "America/Puerto_Rico");
        hashMap.put("PST", "America/Los_Angeles");
        hashMap.put("SST", "Pacific/Guadalcanal");
        hashMap.put("VST", "Asia/Ho_Chi_Minh");
        hashMap.put("EST", "-05:00");
        hashMap.put("MST", "-07:00");
        hashMap.put("HST", "-10:00");
        Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2723n() {
        if (getClass() != C2724o.class && getClass() != C2725p.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    /* renamed from: l */
    public static AbstractC2723n m792l(String str) {
        int i;
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return C2724o.m787q(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            i = 3;
        } else if (!str.startsWith("UT")) {
            return C2725p.m781o(str, true);
        } else {
            i = 2;
        }
        return m790n(str, i, true);
    }

    /* renamed from: m */
    public static AbstractC2723n m791m(String str, C2724o c2724o) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(c2724o, "offset");
        if (str.length() == 0) {
            return c2724o;
        }
        if (str.equals("GMT") || str.equals("UTC") || str.equals("UT")) {
            if (c2724o.m788p() != 0) {
                str = str.concat(c2724o.mo783j());
            }
            return new C2725p(str, C2757c.m707i(c2724o));
        }
        throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: " + str);
    }

    /* renamed from: n */
    private static AbstractC2723n m790n(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return m791m(substring, C2724o.f610e);
        }
        if (str.charAt(i) == '+' || str.charAt(i) == '-') {
            try {
                C2724o m787q = C2724o.m787q(str.substring(i));
                return m787q == C2724o.f610e ? m791m(substring, m787q) : m791m(substring, m787q);
            } catch (DateTimeException e) {
                throw new DateTimeException("Invalid ID for offset-based ZoneId: " + str, e);
            }
        }
        return C2725p.m781o(str, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2723n) {
            return mo783j().equals(((AbstractC2723n) obj).mo783j());
        }
        return false;
    }

    public int hashCode() {
        return mo783j().hashCode();
    }

    /* renamed from: j */
    public abstract String mo783j();

    /* renamed from: k */
    public abstract C2757c mo782k();

    public String toString() {
        return mo783j();
    }
}
