package p034j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p034j$.util.InterfaceC2611s;
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
public final class EnumC2785d4 {
    public static final EnumC2785d4 DISTINCT;
    public static final EnumC2785d4 ORDERED;
    public static final EnumC2785d4 SHORT_CIRCUIT;
    public static final EnumC2785d4 SIZED;
    public static final EnumC2785d4 SORTED;

    /* renamed from: f */
    static final int f905f;

    /* renamed from: g */
    static final int f906g;

    /* renamed from: h */
    static final int f907h;

    /* renamed from: i */
    private static final int f908i;

    /* renamed from: j */
    private static final int f909j;

    /* renamed from: k */
    private static final int f910k;

    /* renamed from: l */
    static final int f911l;

    /* renamed from: m */
    static final int f912m;

    /* renamed from: n */
    static final int f913n;

    /* renamed from: o */
    static final int f914o;

    /* renamed from: p */
    static final int f915p;

    /* renamed from: q */
    static final int f916q;

    /* renamed from: r */
    static final int f917r;

    /* renamed from: s */
    static final int f918s;

    /* renamed from: t */
    static final int f919t;

    /* renamed from: u */
    static final int f920u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC2785d4[] f921v;

    /* renamed from: a */
    private final Map f922a;

    /* renamed from: b */
    private final int f923b;

    /* renamed from: c */
    private final int f924c;

    /* renamed from: d */
    private final int f925d;

    /* renamed from: e */
    private final int f926e;

    static {
        EnumC2779c4 enumC2779c4 = EnumC2779c4.SPLITERATOR;
        C2773b4 m433f = m433f(enumC2779c4);
        EnumC2779c4 enumC2779c42 = EnumC2779c4.STREAM;
        m433f.m455b(enumC2779c42);
        EnumC2779c4 enumC2779c43 = EnumC2779c4.OP;
        m433f.m454c(enumC2779c43);
        EnumC2785d4 enumC2785d4 = new EnumC2785d4("DISTINCT", 0, 0, m433f);
        DISTINCT = enumC2785d4;
        C2773b4 m433f2 = m433f(enumC2779c4);
        m433f2.m455b(enumC2779c42);
        m433f2.m454c(enumC2779c43);
        EnumC2785d4 enumC2785d42 = new EnumC2785d4("SORTED", 1, 1, m433f2);
        SORTED = enumC2785d42;
        C2773b4 m433f3 = m433f(enumC2779c4);
        m433f3.m455b(enumC2779c42);
        m433f3.m454c(enumC2779c43);
        EnumC2779c4 enumC2779c44 = EnumC2779c4.TERMINAL_OP;
        m433f3.m456a(enumC2779c44);
        EnumC2779c4 enumC2779c45 = EnumC2779c4.UPSTREAM_TERMINAL_OP;
        m433f3.m456a(enumC2779c45);
        EnumC2785d4 enumC2785d43 = new EnumC2785d4("ORDERED", 2, 2, m433f3);
        ORDERED = enumC2785d43;
        C2773b4 m433f4 = m433f(enumC2779c4);
        m433f4.m455b(enumC2779c42);
        m433f4.m456a(enumC2779c43);
        EnumC2785d4 enumC2785d44 = new EnumC2785d4("SIZED", 3, 3, m433f4);
        SIZED = enumC2785d44;
        C2773b4 m433f5 = m433f(enumC2779c43);
        m433f5.m455b(enumC2779c44);
        EnumC2785d4 enumC2785d45 = new EnumC2785d4("SHORT_CIRCUIT", 4, 12, m433f5);
        SHORT_CIRCUIT = enumC2785d45;
        f921v = new EnumC2785d4[]{enumC2785d4, enumC2785d42, enumC2785d43, enumC2785d44, enumC2785d45};
        f905f = m437b(enumC2779c4);
        int m437b = m437b(enumC2779c42);
        f906g = m437b;
        f907h = m437b(enumC2779c43);
        m437b(enumC2779c44);
        m437b(enumC2779c45);
        int i = 0;
        for (EnumC2785d4 enumC2785d46 : values()) {
            i |= enumC2785d46.f926e;
        }
        f908i = i;
        f909j = m437b;
        int i2 = m437b << 1;
        f910k = i2;
        f911l = m437b | i2;
        f912m = enumC2785d4.f924c;
        f913n = enumC2785d4.f925d;
        f914o = enumC2785d42.f924c;
        f915p = enumC2785d42.f925d;
        f916q = enumC2785d43.f924c;
        f917r = enumC2785d43.f925d;
        f918s = enumC2785d44.f924c;
        f919t = enumC2785d44.f925d;
        f920u = enumC2785d45.f924c;
    }

    private EnumC2785d4(String str, int i, int i2, C2773b4 c2773b4) {
        for (EnumC2779c4 enumC2779c4 : EnumC2779c4.values()) {
            Map.EL.putIfAbsent(c2773b4.f881a, enumC2779c4, 0);
        }
        this.f922a = c2773b4.f881a;
        int i3 = i2 * 2;
        this.f923b = i3;
        this.f924c = 1 << i3;
        this.f925d = 2 << i3;
        this.f926e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m438a(int i, int i2) {
        return i | (i2 & (i == 0 ? f908i : ~(((f909j & i) << 1) | i | ((f910k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m437b(EnumC2779c4 enumC2779c4) {
        EnumC2785d4[] values;
        int i = 0;
        for (EnumC2785d4 enumC2785d4 : values()) {
            i |= ((Integer) enumC2785d4.f922a.get(enumC2779c4)).intValue() << enumC2785d4.f923b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m436c(InterfaceC2611s interfaceC2611s) {
        int characteristics = interfaceC2611s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2611s.getComparator() == null) ? f905f & characteristics : f905f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2773b4 m433f(EnumC2779c4 enumC2779c4) {
        EnumMap enumMap = new EnumMap(EnumC2779c4.class);
        C2773b4 c2773b4 = new C2773b4(enumMap);
        enumMap.put((EnumMap) enumC2779c4, (EnumC2779c4) 1);
        return c2773b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m432g(int i) {
        return i & ((~i) >> 1) & f909j;
    }

    public static EnumC2785d4 valueOf(String str) {
        return (EnumC2785d4) Enum.valueOf(EnumC2785d4.class, str);
    }

    public static EnumC2785d4[] values() {
        return (EnumC2785d4[]) f921v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m435d(int i) {
        return (i & this.f926e) == this.f924c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m434e(int i) {
        int i2 = this.f926e;
        return (i & i2) == i2;
    }
}
