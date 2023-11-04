package p033j$.time;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Objects;
import p033j$.time.zone.C2762c;
/* renamed from: j$.time.n */
/* loaded from: classes2.dex */
public abstract class AbstractC2728n implements Serializable {
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
    public AbstractC2728n() {
        if (getClass() != C2729o.class && getClass() != C2730p.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    /* renamed from: l */
    public static AbstractC2728n m789l(String str) {
        int i;
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return C2729o.m784q(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            i = 3;
        } else if (!str.startsWith("UT")) {
            return C2730p.m778o(str, true);
        } else {
            i = 2;
        }
        return m787n(str, i, true);
    }

    /* renamed from: m */
    public static AbstractC2728n m788m(String str, C2729o c2729o) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(c2729o, "offset");
        if (str.length() == 0) {
            return c2729o;
        }
        if (str.equals("GMT") || str.equals("UTC") || str.equals("UT")) {
            if (c2729o.m785p() != 0) {
                str = str.concat(c2729o.mo780j());
            }
            return new C2730p(str, C2762c.m704i(c2729o));
        }
        throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: " + str);
    }

    /* renamed from: n */
    private static AbstractC2728n m787n(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return m788m(substring, C2729o.f610e);
        }
        if (str.charAt(i) == '+' || str.charAt(i) == '-') {
            try {
                C2729o m784q = C2729o.m784q(str.substring(i));
                return m784q == C2729o.f610e ? m788m(substring, m784q) : m788m(substring, m784q);
            } catch (DateTimeException e) {
                throw new DateTimeException("Invalid ID for offset-based ZoneId: " + str, e);
            }
        }
        return C2730p.m778o(str, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2728n) {
            return mo780j().equals(((AbstractC2728n) obj).mo780j());
        }
        return false;
    }

    public int hashCode() {
        return mo780j().hashCode();
    }

    /* renamed from: j */
    public abstract String mo780j();

    /* renamed from: k */
    public abstract C2762c mo779k();

    public String toString() {
        return mo780j();
    }
}
