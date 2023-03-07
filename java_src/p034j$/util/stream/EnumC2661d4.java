package p034j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p034j$.util.InterfaceC2487s;
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
public final class EnumC2661d4 {
    public static final EnumC2661d4 DISTINCT;
    public static final EnumC2661d4 ORDERED;
    public static final EnumC2661d4 SHORT_CIRCUIT;
    public static final EnumC2661d4 SIZED;
    public static final EnumC2661d4 SORTED;

    /* renamed from: f */
    static final int f900f;

    /* renamed from: g */
    static final int f901g;

    /* renamed from: h */
    static final int f902h;

    /* renamed from: i */
    private static final int f903i;

    /* renamed from: j */
    private static final int f904j;

    /* renamed from: k */
    private static final int f905k;

    /* renamed from: l */
    static final int f906l;

    /* renamed from: m */
    static final int f907m;

    /* renamed from: n */
    static final int f908n;

    /* renamed from: o */
    static final int f909o;

    /* renamed from: p */
    static final int f910p;

    /* renamed from: q */
    static final int f911q;

    /* renamed from: r */
    static final int f912r;

    /* renamed from: s */
    static final int f913s;

    /* renamed from: t */
    static final int f914t;

    /* renamed from: u */
    static final int f915u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC2661d4[] f916v;

    /* renamed from: a */
    private final Map f917a;

    /* renamed from: b */
    private final int f918b;

    /* renamed from: c */
    private final int f919c;

    /* renamed from: d */
    private final int f920d;

    /* renamed from: e */
    private final int f921e;

    static {
        EnumC2655c4 enumC2655c4 = EnumC2655c4.SPLITERATOR;
        C2649b4 m433f = m433f(enumC2655c4);
        EnumC2655c4 enumC2655c42 = EnumC2655c4.STREAM;
        m433f.m455b(enumC2655c42);
        EnumC2655c4 enumC2655c43 = EnumC2655c4.OP;
        m433f.m454c(enumC2655c43);
        EnumC2661d4 enumC2661d4 = new EnumC2661d4("DISTINCT", 0, 0, m433f);
        DISTINCT = enumC2661d4;
        C2649b4 m433f2 = m433f(enumC2655c4);
        m433f2.m455b(enumC2655c42);
        m433f2.m454c(enumC2655c43);
        EnumC2661d4 enumC2661d42 = new EnumC2661d4("SORTED", 1, 1, m433f2);
        SORTED = enumC2661d42;
        C2649b4 m433f3 = m433f(enumC2655c4);
        m433f3.m455b(enumC2655c42);
        m433f3.m454c(enumC2655c43);
        EnumC2655c4 enumC2655c44 = EnumC2655c4.TERMINAL_OP;
        m433f3.m456a(enumC2655c44);
        EnumC2655c4 enumC2655c45 = EnumC2655c4.UPSTREAM_TERMINAL_OP;
        m433f3.m456a(enumC2655c45);
        EnumC2661d4 enumC2661d43 = new EnumC2661d4("ORDERED", 2, 2, m433f3);
        ORDERED = enumC2661d43;
        C2649b4 m433f4 = m433f(enumC2655c4);
        m433f4.m455b(enumC2655c42);
        m433f4.m456a(enumC2655c43);
        EnumC2661d4 enumC2661d44 = new EnumC2661d4("SIZED", 3, 3, m433f4);
        SIZED = enumC2661d44;
        C2649b4 m433f5 = m433f(enumC2655c43);
        m433f5.m455b(enumC2655c44);
        EnumC2661d4 enumC2661d45 = new EnumC2661d4("SHORT_CIRCUIT", 4, 12, m433f5);
        SHORT_CIRCUIT = enumC2661d45;
        f916v = new EnumC2661d4[]{enumC2661d4, enumC2661d42, enumC2661d43, enumC2661d44, enumC2661d45};
        f900f = m437b(enumC2655c4);
        int m437b = m437b(enumC2655c42);
        f901g = m437b;
        f902h = m437b(enumC2655c43);
        m437b(enumC2655c44);
        m437b(enumC2655c45);
        int i = 0;
        for (EnumC2661d4 enumC2661d46 : values()) {
            i |= enumC2661d46.f921e;
        }
        f903i = i;
        f904j = m437b;
        int i2 = m437b << 1;
        f905k = i2;
        f906l = m437b | i2;
        f907m = enumC2661d4.f919c;
        f908n = enumC2661d4.f920d;
        f909o = enumC2661d42.f919c;
        f910p = enumC2661d42.f920d;
        f911q = enumC2661d43.f919c;
        f912r = enumC2661d43.f920d;
        f913s = enumC2661d44.f919c;
        f914t = enumC2661d44.f920d;
        f915u = enumC2661d45.f919c;
    }

    private EnumC2661d4(String str, int i, int i2, C2649b4 c2649b4) {
        for (EnumC2655c4 enumC2655c4 : EnumC2655c4.values()) {
            Map.EL.putIfAbsent(c2649b4.f876a, enumC2655c4, 0);
        }
        this.f917a = c2649b4.f876a;
        int i3 = i2 * 2;
        this.f918b = i3;
        this.f919c = 1 << i3;
        this.f920d = 2 << i3;
        this.f921e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m438a(int i, int i2) {
        return i | (i2 & (i == 0 ? f903i : ~(((f904j & i) << 1) | i | ((f905k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m437b(EnumC2655c4 enumC2655c4) {
        EnumC2661d4[] values;
        int i = 0;
        for (EnumC2661d4 enumC2661d4 : values()) {
            i |= ((Integer) enumC2661d4.f917a.get(enumC2655c4)).intValue() << enumC2661d4.f918b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m436c(InterfaceC2487s interfaceC2487s) {
        int characteristics = interfaceC2487s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2487s.getComparator() == null) ? f900f & characteristics : f900f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2649b4 m433f(EnumC2655c4 enumC2655c4) {
        EnumMap enumMap = new EnumMap(EnumC2655c4.class);
        C2649b4 c2649b4 = new C2649b4(enumMap);
        enumMap.put((EnumMap) enumC2655c4, (EnumC2655c4) 1);
        return c2649b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m432g(int i) {
        return i & ((~i) >> 1) & f904j;
    }

    public static EnumC2661d4 valueOf(String str) {
        return (EnumC2661d4) Enum.valueOf(EnumC2661d4.class, str);
    }

    public static EnumC2661d4[] values() {
        return (EnumC2661d4[]) f916v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m435d(int i) {
        return (i & this.f921e) == this.f919c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m434e(int i) {
        int i2 = this.f921e;
        return (i & i2) == i2;
    }
}
