package p033j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p033j$.util.Map;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DISTINCT uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: j$.util.stream.d4 */
/* loaded from: classes2.dex */
public final class EnumC3018d4 {
    public static final EnumC3018d4 DISTINCT;
    public static final EnumC3018d4 ORDERED;
    public static final EnumC3018d4 SHORT_CIRCUIT;
    public static final EnumC3018d4 SIZED;
    public static final EnumC3018d4 SORTED;

    /* renamed from: f */
    static final int f1044f;

    /* renamed from: g */
    static final int f1045g;

    /* renamed from: h */
    static final int f1046h;

    /* renamed from: i */
    private static final int f1047i;

    /* renamed from: j */
    private static final int f1048j;

    /* renamed from: k */
    private static final int f1049k;

    /* renamed from: l */
    static final int f1050l;

    /* renamed from: m */
    static final int f1051m;

    /* renamed from: n */
    static final int f1052n;

    /* renamed from: o */
    static final int f1053o;

    /* renamed from: p */
    static final int f1054p;

    /* renamed from: q */
    static final int f1055q;

    /* renamed from: r */
    static final int f1056r;

    /* renamed from: s */
    static final int f1057s;

    /* renamed from: t */
    static final int f1058t;

    /* renamed from: u */
    static final int f1059u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3018d4[] f1060v;

    /* renamed from: a */
    private final Map f1061a;

    /* renamed from: b */
    private final int f1062b;

    /* renamed from: c */
    private final int f1063c;

    /* renamed from: d */
    private final int f1064d;

    /* renamed from: e */
    private final int f1065e;

    static {
        EnumC3012c4 enumC3012c4 = EnumC3012c4.SPLITERATOR;
        C3006b4 m485f = m485f(enumC3012c4);
        EnumC3012c4 enumC3012c42 = EnumC3012c4.STREAM;
        m485f.m507b(enumC3012c42);
        EnumC3012c4 enumC3012c43 = EnumC3012c4.OP;
        m485f.m506c(enumC3012c43);
        EnumC3018d4 enumC3018d4 = new EnumC3018d4("DISTINCT", 0, 0, m485f);
        DISTINCT = enumC3018d4;
        C3006b4 m485f2 = m485f(enumC3012c4);
        m485f2.m507b(enumC3012c42);
        m485f2.m506c(enumC3012c43);
        EnumC3018d4 enumC3018d42 = new EnumC3018d4("SORTED", 1, 1, m485f2);
        SORTED = enumC3018d42;
        C3006b4 m485f3 = m485f(enumC3012c4);
        m485f3.m507b(enumC3012c42);
        m485f3.m506c(enumC3012c43);
        EnumC3012c4 enumC3012c44 = EnumC3012c4.TERMINAL_OP;
        m485f3.m508a(enumC3012c44);
        EnumC3012c4 enumC3012c45 = EnumC3012c4.UPSTREAM_TERMINAL_OP;
        m485f3.m508a(enumC3012c45);
        EnumC3018d4 enumC3018d43 = new EnumC3018d4("ORDERED", 2, 2, m485f3);
        ORDERED = enumC3018d43;
        C3006b4 m485f4 = m485f(enumC3012c4);
        m485f4.m507b(enumC3012c42);
        m485f4.m508a(enumC3012c43);
        EnumC3018d4 enumC3018d44 = new EnumC3018d4("SIZED", 3, 3, m485f4);
        SIZED = enumC3018d44;
        C3006b4 m485f5 = m485f(enumC3012c43);
        m485f5.m507b(enumC3012c44);
        EnumC3018d4 enumC3018d45 = new EnumC3018d4("SHORT_CIRCUIT", 4, 12, m485f5);
        SHORT_CIRCUIT = enumC3018d45;
        f1060v = new EnumC3018d4[]{enumC3018d4, enumC3018d42, enumC3018d43, enumC3018d44, enumC3018d45};
        f1044f = m489b(enumC3012c4);
        int m489b = m489b(enumC3012c42);
        f1045g = m489b;
        f1046h = m489b(enumC3012c43);
        m489b(enumC3012c44);
        m489b(enumC3012c45);
        int i = 0;
        for (EnumC3018d4 enumC3018d46 : values()) {
            i |= enumC3018d46.f1065e;
        }
        f1047i = i;
        f1048j = m489b;
        int i2 = m489b << 1;
        f1049k = i2;
        f1050l = m489b | i2;
        f1051m = enumC3018d4.f1063c;
        f1052n = enumC3018d4.f1064d;
        f1053o = enumC3018d42.f1063c;
        f1054p = enumC3018d42.f1064d;
        f1055q = enumC3018d43.f1063c;
        f1056r = enumC3018d43.f1064d;
        f1057s = enumC3018d44.f1063c;
        f1058t = enumC3018d44.f1064d;
        f1059u = enumC3018d45.f1063c;
    }

    private EnumC3018d4(String str, int i, int i2, C3006b4 c3006b4) {
        for (EnumC3012c4 enumC3012c4 : EnumC3012c4.values()) {
            Map.EL.putIfAbsent(c3006b4.f1020a, enumC3012c4, 0);
        }
        this.f1061a = c3006b4.f1020a;
        int i3 = i2 * 2;
        this.f1062b = i3;
        this.f1063c = 1 << i3;
        this.f1064d = 2 << i3;
        this.f1065e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m490a(int i, int i2) {
        return i | (i2 & (i == 0 ? f1047i : ~(((f1048j & i) << 1) | i | ((f1049k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m489b(EnumC3012c4 enumC3012c4) {
        EnumC3018d4[] values;
        int i = 0;
        for (EnumC3018d4 enumC3018d4 : values()) {
            i |= ((Integer) enumC3018d4.f1061a.get(enumC3012c4)).intValue() << enumC3018d4.f1062b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m488c(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        return ((characteristics & 4) == 0 || spliterator.getComparator() == null) ? f1044f & characteristics : f1044f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3006b4 m485f(EnumC3012c4 enumC3012c4) {
        EnumMap enumMap = new EnumMap(EnumC3012c4.class);
        C3006b4 c3006b4 = new C3006b4(enumMap);
        enumMap.put((EnumMap) enumC3012c4, (EnumC3012c4) 1);
        return c3006b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m484g(int i) {
        return i & ((~i) >> 1) & f1048j;
    }

    public static EnumC3018d4 valueOf(String str) {
        return (EnumC3018d4) Enum.valueOf(EnumC3018d4.class, str);
    }

    public static EnumC3018d4[] values() {
        return (EnumC3018d4[]) f1060v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m487d(int i) {
        return (i & this.f1065e) == this.f1063c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m486e(int i) {
        int i2 = this.f1065e;
        return (i & i2) == i2;
    }
}
