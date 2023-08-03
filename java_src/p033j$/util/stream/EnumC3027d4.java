package p033j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p033j$.util.InterfaceC2853s;
import p033j$.util.Map;
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
public final class EnumC3027d4 {
    public static final EnumC3027d4 DISTINCT;
    public static final EnumC3027d4 ORDERED;
    public static final EnumC3027d4 SHORT_CIRCUIT;
    public static final EnumC3027d4 SIZED;
    public static final EnumC3027d4 SORTED;

    /* renamed from: f */
    static final int f994f;

    /* renamed from: g */
    static final int f995g;

    /* renamed from: h */
    static final int f996h;

    /* renamed from: i */
    private static final int f997i;

    /* renamed from: j */
    private static final int f998j;

    /* renamed from: k */
    private static final int f999k;

    /* renamed from: l */
    static final int f1000l;

    /* renamed from: m */
    static final int f1001m;

    /* renamed from: n */
    static final int f1002n;

    /* renamed from: o */
    static final int f1003o;

    /* renamed from: p */
    static final int f1004p;

    /* renamed from: q */
    static final int f1005q;

    /* renamed from: r */
    static final int f1006r;

    /* renamed from: s */
    static final int f1007s;

    /* renamed from: t */
    static final int f1008t;

    /* renamed from: u */
    static final int f1009u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3027d4[] f1010v;

    /* renamed from: a */
    private final Map f1011a;

    /* renamed from: b */
    private final int f1012b;

    /* renamed from: c */
    private final int f1013c;

    /* renamed from: d */
    private final int f1014d;

    /* renamed from: e */
    private final int f1015e;

    static {
        EnumC3021c4 enumC3021c4 = EnumC3021c4.SPLITERATOR;
        C3015b4 m436f = m436f(enumC3021c4);
        EnumC3021c4 enumC3021c42 = EnumC3021c4.STREAM;
        m436f.m458b(enumC3021c42);
        EnumC3021c4 enumC3021c43 = EnumC3021c4.OP;
        m436f.m457c(enumC3021c43);
        EnumC3027d4 enumC3027d4 = new EnumC3027d4("DISTINCT", 0, 0, m436f);
        DISTINCT = enumC3027d4;
        C3015b4 m436f2 = m436f(enumC3021c4);
        m436f2.m458b(enumC3021c42);
        m436f2.m457c(enumC3021c43);
        EnumC3027d4 enumC3027d42 = new EnumC3027d4("SORTED", 1, 1, m436f2);
        SORTED = enumC3027d42;
        C3015b4 m436f3 = m436f(enumC3021c4);
        m436f3.m458b(enumC3021c42);
        m436f3.m457c(enumC3021c43);
        EnumC3021c4 enumC3021c44 = EnumC3021c4.TERMINAL_OP;
        m436f3.m459a(enumC3021c44);
        EnumC3021c4 enumC3021c45 = EnumC3021c4.UPSTREAM_TERMINAL_OP;
        m436f3.m459a(enumC3021c45);
        EnumC3027d4 enumC3027d43 = new EnumC3027d4("ORDERED", 2, 2, m436f3);
        ORDERED = enumC3027d43;
        C3015b4 m436f4 = m436f(enumC3021c4);
        m436f4.m458b(enumC3021c42);
        m436f4.m459a(enumC3021c43);
        EnumC3027d4 enumC3027d44 = new EnumC3027d4("SIZED", 3, 3, m436f4);
        SIZED = enumC3027d44;
        C3015b4 m436f5 = m436f(enumC3021c43);
        m436f5.m458b(enumC3021c44);
        EnumC3027d4 enumC3027d45 = new EnumC3027d4("SHORT_CIRCUIT", 4, 12, m436f5);
        SHORT_CIRCUIT = enumC3027d45;
        f1010v = new EnumC3027d4[]{enumC3027d4, enumC3027d42, enumC3027d43, enumC3027d44, enumC3027d45};
        f994f = m440b(enumC3021c4);
        int m440b = m440b(enumC3021c42);
        f995g = m440b;
        f996h = m440b(enumC3021c43);
        m440b(enumC3021c44);
        m440b(enumC3021c45);
        int i = 0;
        for (EnumC3027d4 enumC3027d46 : values()) {
            i |= enumC3027d46.f1015e;
        }
        f997i = i;
        f998j = m440b;
        int i2 = m440b << 1;
        f999k = i2;
        f1000l = m440b | i2;
        f1001m = enumC3027d4.f1013c;
        f1002n = enumC3027d4.f1014d;
        f1003o = enumC3027d42.f1013c;
        f1004p = enumC3027d42.f1014d;
        f1005q = enumC3027d43.f1013c;
        f1006r = enumC3027d43.f1014d;
        f1007s = enumC3027d44.f1013c;
        f1008t = enumC3027d44.f1014d;
        f1009u = enumC3027d45.f1013c;
    }

    private EnumC3027d4(String str, int i, int i2, C3015b4 c3015b4) {
        for (EnumC3021c4 enumC3021c4 : EnumC3021c4.values()) {
            Map.EL.putIfAbsent(c3015b4.f970a, enumC3021c4, 0);
        }
        this.f1011a = c3015b4.f970a;
        int i3 = i2 * 2;
        this.f1012b = i3;
        this.f1013c = 1 << i3;
        this.f1014d = 2 << i3;
        this.f1015e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m441a(int i, int i2) {
        return i | (i2 & (i == 0 ? f997i : ~(((f998j & i) << 1) | i | ((f999k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m440b(EnumC3021c4 enumC3021c4) {
        EnumC3027d4[] values;
        int i = 0;
        for (EnumC3027d4 enumC3027d4 : values()) {
            i |= ((Integer) enumC3027d4.f1011a.get(enumC3021c4)).intValue() << enumC3027d4.f1012b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m439c(InterfaceC2853s interfaceC2853s) {
        int characteristics = interfaceC2853s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2853s.getComparator() == null) ? f994f & characteristics : f994f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3015b4 m436f(EnumC3021c4 enumC3021c4) {
        EnumMap enumMap = new EnumMap(EnumC3021c4.class);
        C3015b4 c3015b4 = new C3015b4(enumMap);
        enumMap.put((EnumMap) enumC3021c4, (EnumC3021c4) 1);
        return c3015b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m435g(int i) {
        return i & ((~i) >> 1) & f998j;
    }

    public static EnumC3027d4 valueOf(String str) {
        return (EnumC3027d4) Enum.valueOf(EnumC3027d4.class, str);
    }

    public static EnumC3027d4[] values() {
        return (EnumC3027d4[]) f1010v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m438d(int i) {
        return (i & this.f1015e) == this.f1013c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m437e(int i) {
        int i2 = this.f1015e;
        return (i & i2) == i2;
    }
}
