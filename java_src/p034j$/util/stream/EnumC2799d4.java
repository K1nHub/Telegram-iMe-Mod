package p034j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p034j$.util.InterfaceC2625s;
import p034j$.util.Map;
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
public final class EnumC2799d4 {
    public static final EnumC2799d4 DISTINCT;
    public static final EnumC2799d4 ORDERED;
    public static final EnumC2799d4 SHORT_CIRCUIT;
    public static final EnumC2799d4 SIZED;
    public static final EnumC2799d4 SORTED;

    /* renamed from: f */
    static final int f906f;

    /* renamed from: g */
    static final int f907g;

    /* renamed from: h */
    static final int f908h;

    /* renamed from: i */
    private static final int f909i;

    /* renamed from: j */
    private static final int f910j;

    /* renamed from: k */
    private static final int f911k;

    /* renamed from: l */
    static final int f912l;

    /* renamed from: m */
    static final int f913m;

    /* renamed from: n */
    static final int f914n;

    /* renamed from: o */
    static final int f915o;

    /* renamed from: p */
    static final int f916p;

    /* renamed from: q */
    static final int f917q;

    /* renamed from: r */
    static final int f918r;

    /* renamed from: s */
    static final int f919s;

    /* renamed from: t */
    static final int f920t;

    /* renamed from: u */
    static final int f921u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC2799d4[] f922v;

    /* renamed from: a */
    private final Map f923a;

    /* renamed from: b */
    private final int f924b;

    /* renamed from: c */
    private final int f925c;

    /* renamed from: d */
    private final int f926d;

    /* renamed from: e */
    private final int f927e;

    static {
        EnumC2793c4 enumC2793c4 = EnumC2793c4.SPLITERATOR;
        C2787b4 m432f = m432f(enumC2793c4);
        EnumC2793c4 enumC2793c42 = EnumC2793c4.STREAM;
        m432f.m454b(enumC2793c42);
        EnumC2793c4 enumC2793c43 = EnumC2793c4.OP;
        m432f.m453c(enumC2793c43);
        EnumC2799d4 enumC2799d4 = new EnumC2799d4("DISTINCT", 0, 0, m432f);
        DISTINCT = enumC2799d4;
        C2787b4 m432f2 = m432f(enumC2793c4);
        m432f2.m454b(enumC2793c42);
        m432f2.m453c(enumC2793c43);
        EnumC2799d4 enumC2799d42 = new EnumC2799d4("SORTED", 1, 1, m432f2);
        SORTED = enumC2799d42;
        C2787b4 m432f3 = m432f(enumC2793c4);
        m432f3.m454b(enumC2793c42);
        m432f3.m453c(enumC2793c43);
        EnumC2793c4 enumC2793c44 = EnumC2793c4.TERMINAL_OP;
        m432f3.m455a(enumC2793c44);
        EnumC2793c4 enumC2793c45 = EnumC2793c4.UPSTREAM_TERMINAL_OP;
        m432f3.m455a(enumC2793c45);
        EnumC2799d4 enumC2799d43 = new EnumC2799d4("ORDERED", 2, 2, m432f3);
        ORDERED = enumC2799d43;
        C2787b4 m432f4 = m432f(enumC2793c4);
        m432f4.m454b(enumC2793c42);
        m432f4.m455a(enumC2793c43);
        EnumC2799d4 enumC2799d44 = new EnumC2799d4("SIZED", 3, 3, m432f4);
        SIZED = enumC2799d44;
        C2787b4 m432f5 = m432f(enumC2793c43);
        m432f5.m454b(enumC2793c44);
        EnumC2799d4 enumC2799d45 = new EnumC2799d4("SHORT_CIRCUIT", 4, 12, m432f5);
        SHORT_CIRCUIT = enumC2799d45;
        f922v = new EnumC2799d4[]{enumC2799d4, enumC2799d42, enumC2799d43, enumC2799d44, enumC2799d45};
        f906f = m436b(enumC2793c4);
        int m436b = m436b(enumC2793c42);
        f907g = m436b;
        f908h = m436b(enumC2793c43);
        m436b(enumC2793c44);
        m436b(enumC2793c45);
        int i = 0;
        for (EnumC2799d4 enumC2799d46 : values()) {
            i |= enumC2799d46.f927e;
        }
        f909i = i;
        f910j = m436b;
        int i2 = m436b << 1;
        f911k = i2;
        f912l = m436b | i2;
        f913m = enumC2799d4.f925c;
        f914n = enumC2799d4.f926d;
        f915o = enumC2799d42.f925c;
        f916p = enumC2799d42.f926d;
        f917q = enumC2799d43.f925c;
        f918r = enumC2799d43.f926d;
        f919s = enumC2799d44.f925c;
        f920t = enumC2799d44.f926d;
        f921u = enumC2799d45.f925c;
    }

    private EnumC2799d4(String str, int i, int i2, C2787b4 c2787b4) {
        for (EnumC2793c4 enumC2793c4 : EnumC2793c4.values()) {
            Map.EL.putIfAbsent(c2787b4.f882a, enumC2793c4, 0);
        }
        this.f923a = c2787b4.f882a;
        int i3 = i2 * 2;
        this.f924b = i3;
        this.f925c = 1 << i3;
        this.f926d = 2 << i3;
        this.f927e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m437a(int i, int i2) {
        return i | (i2 & (i == 0 ? f909i : ~(((f910j & i) << 1) | i | ((f911k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m436b(EnumC2793c4 enumC2793c4) {
        EnumC2799d4[] values;
        int i = 0;
        for (EnumC2799d4 enumC2799d4 : values()) {
            i |= ((Integer) enumC2799d4.f923a.get(enumC2793c4)).intValue() << enumC2799d4.f924b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m435c(InterfaceC2625s interfaceC2625s) {
        int characteristics = interfaceC2625s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2625s.getComparator() == null) ? f906f & characteristics : f906f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2787b4 m432f(EnumC2793c4 enumC2793c4) {
        EnumMap enumMap = new EnumMap(EnumC2793c4.class);
        C2787b4 c2787b4 = new C2787b4(enumMap);
        enumMap.put((EnumMap) enumC2793c4, (EnumC2793c4) 1);
        return c2787b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m431g(int i) {
        return i & ((~i) >> 1) & f910j;
    }

    public static EnumC2799d4 valueOf(String str) {
        return (EnumC2799d4) Enum.valueOf(EnumC2799d4.class, str);
    }

    public static EnumC2799d4[] values() {
        return (EnumC2799d4[]) f922v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m434d(int i) {
        return (i & this.f927e) == this.f925c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m433e(int i) {
        int i2 = this.f927e;
        return (i & i2) == i2;
    }
}
