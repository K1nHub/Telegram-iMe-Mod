package p034j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p034j$.util.InterfaceC2732s;
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
public final class EnumC2906d4 {
    public static final EnumC2906d4 DISTINCT;
    public static final EnumC2906d4 ORDERED;
    public static final EnumC2906d4 SHORT_CIRCUIT;
    public static final EnumC2906d4 SIZED;
    public static final EnumC2906d4 SORTED;

    /* renamed from: f */
    static final int f909f;

    /* renamed from: g */
    static final int f910g;

    /* renamed from: h */
    static final int f911h;

    /* renamed from: i */
    private static final int f912i;

    /* renamed from: j */
    private static final int f913j;

    /* renamed from: k */
    private static final int f914k;

    /* renamed from: l */
    static final int f915l;

    /* renamed from: m */
    static final int f916m;

    /* renamed from: n */
    static final int f917n;

    /* renamed from: o */
    static final int f918o;

    /* renamed from: p */
    static final int f919p;

    /* renamed from: q */
    static final int f920q;

    /* renamed from: r */
    static final int f921r;

    /* renamed from: s */
    static final int f922s;

    /* renamed from: t */
    static final int f923t;

    /* renamed from: u */
    static final int f924u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC2906d4[] f925v;

    /* renamed from: a */
    private final Map f926a;

    /* renamed from: b */
    private final int f927b;

    /* renamed from: c */
    private final int f928c;

    /* renamed from: d */
    private final int f929d;

    /* renamed from: e */
    private final int f930e;

    static {
        EnumC2900c4 enumC2900c4 = EnumC2900c4.SPLITERATOR;
        C2894b4 m418f = m418f(enumC2900c4);
        EnumC2900c4 enumC2900c42 = EnumC2900c4.STREAM;
        m418f.m440b(enumC2900c42);
        EnumC2900c4 enumC2900c43 = EnumC2900c4.OP;
        m418f.m439c(enumC2900c43);
        EnumC2906d4 enumC2906d4 = new EnumC2906d4("DISTINCT", 0, 0, m418f);
        DISTINCT = enumC2906d4;
        C2894b4 m418f2 = m418f(enumC2900c4);
        m418f2.m440b(enumC2900c42);
        m418f2.m439c(enumC2900c43);
        EnumC2906d4 enumC2906d42 = new EnumC2906d4("SORTED", 1, 1, m418f2);
        SORTED = enumC2906d42;
        C2894b4 m418f3 = m418f(enumC2900c4);
        m418f3.m440b(enumC2900c42);
        m418f3.m439c(enumC2900c43);
        EnumC2900c4 enumC2900c44 = EnumC2900c4.TERMINAL_OP;
        m418f3.m441a(enumC2900c44);
        EnumC2900c4 enumC2900c45 = EnumC2900c4.UPSTREAM_TERMINAL_OP;
        m418f3.m441a(enumC2900c45);
        EnumC2906d4 enumC2906d43 = new EnumC2906d4("ORDERED", 2, 2, m418f3);
        ORDERED = enumC2906d43;
        C2894b4 m418f4 = m418f(enumC2900c4);
        m418f4.m440b(enumC2900c42);
        m418f4.m441a(enumC2900c43);
        EnumC2906d4 enumC2906d44 = new EnumC2906d4("SIZED", 3, 3, m418f4);
        SIZED = enumC2906d44;
        C2894b4 m418f5 = m418f(enumC2900c43);
        m418f5.m440b(enumC2900c44);
        EnumC2906d4 enumC2906d45 = new EnumC2906d4("SHORT_CIRCUIT", 4, 12, m418f5);
        SHORT_CIRCUIT = enumC2906d45;
        f925v = new EnumC2906d4[]{enumC2906d4, enumC2906d42, enumC2906d43, enumC2906d44, enumC2906d45};
        f909f = m422b(enumC2900c4);
        int m422b = m422b(enumC2900c42);
        f910g = m422b;
        f911h = m422b(enumC2900c43);
        m422b(enumC2900c44);
        m422b(enumC2900c45);
        int i = 0;
        for (EnumC2906d4 enumC2906d46 : values()) {
            i |= enumC2906d46.f930e;
        }
        f912i = i;
        f913j = m422b;
        int i2 = m422b << 1;
        f914k = i2;
        f915l = m422b | i2;
        f916m = enumC2906d4.f928c;
        f917n = enumC2906d4.f929d;
        f918o = enumC2906d42.f928c;
        f919p = enumC2906d42.f929d;
        f920q = enumC2906d43.f928c;
        f921r = enumC2906d43.f929d;
        f922s = enumC2906d44.f928c;
        f923t = enumC2906d44.f929d;
        f924u = enumC2906d45.f928c;
    }

    private EnumC2906d4(String str, int i, int i2, C2894b4 c2894b4) {
        for (EnumC2900c4 enumC2900c4 : EnumC2900c4.values()) {
            Map.EL.putIfAbsent(c2894b4.f885a, enumC2900c4, 0);
        }
        this.f926a = c2894b4.f885a;
        int i3 = i2 * 2;
        this.f927b = i3;
        this.f928c = 1 << i3;
        this.f929d = 2 << i3;
        this.f930e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m423a(int i, int i2) {
        return i | (i2 & (i == 0 ? f912i : ~(((f913j & i) << 1) | i | ((f914k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m422b(EnumC2900c4 enumC2900c4) {
        EnumC2906d4[] values;
        int i = 0;
        for (EnumC2906d4 enumC2906d4 : values()) {
            i |= ((Integer) enumC2906d4.f926a.get(enumC2900c4)).intValue() << enumC2906d4.f927b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m421c(InterfaceC2732s interfaceC2732s) {
        int characteristics = interfaceC2732s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2732s.getComparator() == null) ? f909f & characteristics : f909f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C2894b4 m418f(EnumC2900c4 enumC2900c4) {
        EnumMap enumMap = new EnumMap(EnumC2900c4.class);
        C2894b4 c2894b4 = new C2894b4(enumMap);
        enumMap.put((EnumMap) enumC2900c4, (EnumC2900c4) 1);
        return c2894b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m417g(int i) {
        return i & ((~i) >> 1) & f913j;
    }

    public static EnumC2906d4 valueOf(String str) {
        return (EnumC2906d4) Enum.valueOf(EnumC2906d4.class, str);
    }

    public static EnumC2906d4[] values() {
        return (EnumC2906d4[]) f925v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m420d(int i) {
        return (i & this.f930e) == this.f928c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m419e(int i) {
        int i2 = this.f930e;
        return (i & i2) == i2;
    }
}
