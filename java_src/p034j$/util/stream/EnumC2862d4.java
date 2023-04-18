package p034j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p034j$.util.InterfaceC2688s;
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
public final class EnumC2862d4 {
    public static final EnumC2862d4 DISTINCT;
    public static final EnumC2862d4 ORDERED;
    public static final EnumC2862d4 SHORT_CIRCUIT;
    public static final EnumC2862d4 SIZED;
    public static final EnumC2862d4 SORTED;

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
    private static final /* synthetic */ EnumC2862d4[] f922v;

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
        EnumC2856c4 enumC2856c4 = EnumC2856c4.SPLITERATOR;
        C2850b4 m413f = m413f(enumC2856c4);
        EnumC2856c4 enumC2856c42 = EnumC2856c4.STREAM;
        m413f.m435b(enumC2856c42);
        EnumC2856c4 enumC2856c43 = EnumC2856c4.OP;
        m413f.m434c(enumC2856c43);
        EnumC2862d4 enumC2862d4 = new EnumC2862d4("DISTINCT", 0, 0, m413f);
        DISTINCT = enumC2862d4;
        C2850b4 m413f2 = m413f(enumC2856c4);
        m413f2.m435b(enumC2856c42);
        m413f2.m434c(enumC2856c43);
        EnumC2862d4 enumC2862d42 = new EnumC2862d4("SORTED", 1, 1, m413f2);
        SORTED = enumC2862d42;
        C2850b4 m413f3 = m413f(enumC2856c4);
        m413f3.m435b(enumC2856c42);
        m413f3.m434c(enumC2856c43);
        EnumC2856c4 enumC2856c44 = EnumC2856c4.TERMINAL_OP;
        m413f3.m436a(enumC2856c44);
        EnumC2856c4 enumC2856c45 = EnumC2856c4.UPSTREAM_TERMINAL_OP;
        m413f3.m436a(enumC2856c45);
        EnumC2862d4 enumC2862d43 = new EnumC2862d4("ORDERED", 2, 2, m413f3);
        ORDERED = enumC2862d43;
        C2850b4 m413f4 = m413f(enumC2856c4);
        m413f4.m435b(enumC2856c42);
        m413f4.m436a(enumC2856c43);
        EnumC2862d4 enumC2862d44 = new EnumC2862d4("SIZED", 3, 3, m413f4);
        SIZED = enumC2862d44;
        C2850b4 m413f5 = m413f(enumC2856c43);
        m413f5.m435b(enumC2856c44);
        EnumC2862d4 enumC2862d45 = new EnumC2862d4("SHORT_CIRCUIT", 4, 12, m413f5);
        SHORT_CIRCUIT = enumC2862d45;
        f922v = new EnumC2862d4[]{enumC2862d4, enumC2862d42, enumC2862d43, enumC2862d44, enumC2862d45};
        f906f = m417b(enumC2856c4);
        int m417b = m417b(enumC2856c42);
        f907g = m417b;
        f908h = m417b(enumC2856c43);
        m417b(enumC2856c44);
        m417b(enumC2856c45);
        int i = 0;
        for (EnumC2862d4 enumC2862d46 : values()) {
            i |= enumC2862d46.f927e;
        }
        f909i = i;
        f910j = m417b;
        int i2 = m417b << 1;
        f911k = i2;
        f912l = m417b | i2;
        f913m = enumC2862d4.f925c;
        f914n = enumC2862d4.f926d;
        f915o = enumC2862d42.f925c;
        f916p = enumC2862d42.f926d;
        f917q = enumC2862d43.f925c;
        f918r = enumC2862d43.f926d;
        f919s = enumC2862d44.f925c;
        f920t = enumC2862d44.f926d;
        f921u = enumC2862d45.f925c;
    }

    private EnumC2862d4(String str, int i, int i2, C2850b4 c2850b4) {
        for (EnumC2856c4 enumC2856c4 : EnumC2856c4.values()) {
            Map.EL.putIfAbsent(c2850b4.f882a, enumC2856c4, 0);
        }
        this.f923a = c2850b4.f882a;
        int i3 = i2 * 2;
        this.f924b = i3;
        this.f925c = 1 << i3;
        this.f926d = 2 << i3;
        this.f927e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m418a(int i, int i2) {
        return i | (i2 & (i == 0 ? f909i : ~(((f910j & i) << 1) | i | ((f911k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m417b(EnumC2856c4 enumC2856c4) {
        EnumC2862d4[] values;
        int i = 0;
        for (EnumC2862d4 enumC2862d4 : values()) {
            i |= ((Integer) enumC2862d4.f923a.get(enumC2856c4)).intValue() << enumC2862d4.f924b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m416c(InterfaceC2688s interfaceC2688s) {
        int characteristics = interfaceC2688s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2688s.getComparator() == null) ? f906f & characteristics : f906f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2850b4 m413f(EnumC2856c4 enumC2856c4) {
        EnumMap enumMap = new EnumMap(EnumC2856c4.class);
        C2850b4 c2850b4 = new C2850b4(enumMap);
        enumMap.put((EnumMap) enumC2856c4, (EnumC2856c4) 1);
        return c2850b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m412g(int i) {
        return i & ((~i) >> 1) & f910j;
    }

    public static EnumC2862d4 valueOf(String str) {
        return (EnumC2862d4) Enum.valueOf(EnumC2862d4.class, str);
    }

    public static EnumC2862d4[] values() {
        return (EnumC2862d4[]) f922v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m415d(int i) {
        return (i & this.f927e) == this.f925c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m414e(int i) {
        int i2 = this.f927e;
        return (i & i2) == i2;
    }
}
