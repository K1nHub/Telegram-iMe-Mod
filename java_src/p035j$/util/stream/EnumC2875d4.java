package p035j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p035j$.util.InterfaceC2701s;
import p035j$.util.Map;
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
public final class EnumC2875d4 {
    public static final EnumC2875d4 DISTINCT;
    public static final EnumC2875d4 ORDERED;
    public static final EnumC2875d4 SHORT_CIRCUIT;
    public static final EnumC2875d4 SIZED;
    public static final EnumC2875d4 SORTED;

    /* renamed from: f */
    static final int f911f;

    /* renamed from: g */
    static final int f912g;

    /* renamed from: h */
    static final int f913h;

    /* renamed from: i */
    private static final int f914i;

    /* renamed from: j */
    private static final int f915j;

    /* renamed from: k */
    private static final int f916k;

    /* renamed from: l */
    static final int f917l;

    /* renamed from: m */
    static final int f918m;

    /* renamed from: n */
    static final int f919n;

    /* renamed from: o */
    static final int f920o;

    /* renamed from: p */
    static final int f921p;

    /* renamed from: q */
    static final int f922q;

    /* renamed from: r */
    static final int f923r;

    /* renamed from: s */
    static final int f924s;

    /* renamed from: t */
    static final int f925t;

    /* renamed from: u */
    static final int f926u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC2875d4[] f927v;

    /* renamed from: a */
    private final Map f928a;

    /* renamed from: b */
    private final int f929b;

    /* renamed from: c */
    private final int f930c;

    /* renamed from: d */
    private final int f931d;

    /* renamed from: e */
    private final int f932e;

    static {
        EnumC2869c4 enumC2869c4 = EnumC2869c4.SPLITERATOR;
        C2863b4 m427f = m427f(enumC2869c4);
        EnumC2869c4 enumC2869c42 = EnumC2869c4.STREAM;
        m427f.m449b(enumC2869c42);
        EnumC2869c4 enumC2869c43 = EnumC2869c4.OP;
        m427f.m448c(enumC2869c43);
        EnumC2875d4 enumC2875d4 = new EnumC2875d4("DISTINCT", 0, 0, m427f);
        DISTINCT = enumC2875d4;
        C2863b4 m427f2 = m427f(enumC2869c4);
        m427f2.m449b(enumC2869c42);
        m427f2.m448c(enumC2869c43);
        EnumC2875d4 enumC2875d42 = new EnumC2875d4("SORTED", 1, 1, m427f2);
        SORTED = enumC2875d42;
        C2863b4 m427f3 = m427f(enumC2869c4);
        m427f3.m449b(enumC2869c42);
        m427f3.m448c(enumC2869c43);
        EnumC2869c4 enumC2869c44 = EnumC2869c4.TERMINAL_OP;
        m427f3.m450a(enumC2869c44);
        EnumC2869c4 enumC2869c45 = EnumC2869c4.UPSTREAM_TERMINAL_OP;
        m427f3.m450a(enumC2869c45);
        EnumC2875d4 enumC2875d43 = new EnumC2875d4("ORDERED", 2, 2, m427f3);
        ORDERED = enumC2875d43;
        C2863b4 m427f4 = m427f(enumC2869c4);
        m427f4.m449b(enumC2869c42);
        m427f4.m450a(enumC2869c43);
        EnumC2875d4 enumC2875d44 = new EnumC2875d4("SIZED", 3, 3, m427f4);
        SIZED = enumC2875d44;
        C2863b4 m427f5 = m427f(enumC2869c43);
        m427f5.m449b(enumC2869c44);
        EnumC2875d4 enumC2875d45 = new EnumC2875d4("SHORT_CIRCUIT", 4, 12, m427f5);
        SHORT_CIRCUIT = enumC2875d45;
        f927v = new EnumC2875d4[]{enumC2875d4, enumC2875d42, enumC2875d43, enumC2875d44, enumC2875d45};
        f911f = m431b(enumC2869c4);
        int m431b = m431b(enumC2869c42);
        f912g = m431b;
        f913h = m431b(enumC2869c43);
        m431b(enumC2869c44);
        m431b(enumC2869c45);
        int i = 0;
        for (EnumC2875d4 enumC2875d46 : values()) {
            i |= enumC2875d46.f932e;
        }
        f914i = i;
        f915j = m431b;
        int i2 = m431b << 1;
        f916k = i2;
        f917l = m431b | i2;
        f918m = enumC2875d4.f930c;
        f919n = enumC2875d4.f931d;
        f920o = enumC2875d42.f930c;
        f921p = enumC2875d42.f931d;
        f922q = enumC2875d43.f930c;
        f923r = enumC2875d43.f931d;
        f924s = enumC2875d44.f930c;
        f925t = enumC2875d44.f931d;
        f926u = enumC2875d45.f930c;
    }

    private EnumC2875d4(String str, int i, int i2, C2863b4 c2863b4) {
        for (EnumC2869c4 enumC2869c4 : EnumC2869c4.values()) {
            Map.EL.putIfAbsent(c2863b4.f887a, enumC2869c4, 0);
        }
        this.f928a = c2863b4.f887a;
        int i3 = i2 * 2;
        this.f929b = i3;
        this.f930c = 1 << i3;
        this.f931d = 2 << i3;
        this.f932e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m432a(int i, int i2) {
        return i | (i2 & (i == 0 ? f914i : ~(((f915j & i) << 1) | i | ((f916k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m431b(EnumC2869c4 enumC2869c4) {
        EnumC2875d4[] values;
        int i = 0;
        for (EnumC2875d4 enumC2875d4 : values()) {
            i |= ((Integer) enumC2875d4.f928a.get(enumC2869c4)).intValue() << enumC2875d4.f929b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m430c(InterfaceC2701s interfaceC2701s) {
        int characteristics = interfaceC2701s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2701s.getComparator() == null) ? f911f & characteristics : f911f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2863b4 m427f(EnumC2869c4 enumC2869c4) {
        EnumMap enumMap = new EnumMap(EnumC2869c4.class);
        C2863b4 c2863b4 = new C2863b4(enumMap);
        enumMap.put((EnumMap) enumC2869c4, (EnumC2869c4) 1);
        return c2863b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m426g(int i) {
        return i & ((~i) >> 1) & f915j;
    }

    public static EnumC2875d4 valueOf(String str) {
        return (EnumC2875d4) Enum.valueOf(EnumC2875d4.class, str);
    }

    public static EnumC2875d4[] values() {
        return (EnumC2875d4[]) f927v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m429d(int i) {
        return (i & this.f932e) == this.f930c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m428e(int i) {
        int i2 = this.f932e;
        return (i & i2) == i2;
    }
}
