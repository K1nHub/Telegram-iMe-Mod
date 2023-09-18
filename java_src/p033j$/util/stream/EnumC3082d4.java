package p033j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p033j$.util.InterfaceC2908s;
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
public final class EnumC3082d4 {
    public static final EnumC3082d4 DISTINCT;
    public static final EnumC3082d4 ORDERED;
    public static final EnumC3082d4 SHORT_CIRCUIT;
    public static final EnumC3082d4 SIZED;
    public static final EnumC3082d4 SORTED;

    /* renamed from: f */
    static final int f995f;

    /* renamed from: g */
    static final int f996g;

    /* renamed from: h */
    static final int f997h;

    /* renamed from: i */
    private static final int f998i;

    /* renamed from: j */
    private static final int f999j;

    /* renamed from: k */
    private static final int f1000k;

    /* renamed from: l */
    static final int f1001l;

    /* renamed from: m */
    static final int f1002m;

    /* renamed from: n */
    static final int f1003n;

    /* renamed from: o */
    static final int f1004o;

    /* renamed from: p */
    static final int f1005p;

    /* renamed from: q */
    static final int f1006q;

    /* renamed from: r */
    static final int f1007r;

    /* renamed from: s */
    static final int f1008s;

    /* renamed from: t */
    static final int f1009t;

    /* renamed from: u */
    static final int f1010u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3082d4[] f1011v;

    /* renamed from: a */
    private final Map f1012a;

    /* renamed from: b */
    private final int f1013b;

    /* renamed from: c */
    private final int f1014c;

    /* renamed from: d */
    private final int f1015d;

    /* renamed from: e */
    private final int f1016e;

    static {
        EnumC3076c4 enumC3076c4 = EnumC3076c4.SPLITERATOR;
        C3070b4 m436f = m436f(enumC3076c4);
        EnumC3076c4 enumC3076c42 = EnumC3076c4.STREAM;
        m436f.m458b(enumC3076c42);
        EnumC3076c4 enumC3076c43 = EnumC3076c4.OP;
        m436f.m457c(enumC3076c43);
        EnumC3082d4 enumC3082d4 = new EnumC3082d4("DISTINCT", 0, 0, m436f);
        DISTINCT = enumC3082d4;
        C3070b4 m436f2 = m436f(enumC3076c4);
        m436f2.m458b(enumC3076c42);
        m436f2.m457c(enumC3076c43);
        EnumC3082d4 enumC3082d42 = new EnumC3082d4("SORTED", 1, 1, m436f2);
        SORTED = enumC3082d42;
        C3070b4 m436f3 = m436f(enumC3076c4);
        m436f3.m458b(enumC3076c42);
        m436f3.m457c(enumC3076c43);
        EnumC3076c4 enumC3076c44 = EnumC3076c4.TERMINAL_OP;
        m436f3.m459a(enumC3076c44);
        EnumC3076c4 enumC3076c45 = EnumC3076c4.UPSTREAM_TERMINAL_OP;
        m436f3.m459a(enumC3076c45);
        EnumC3082d4 enumC3082d43 = new EnumC3082d4("ORDERED", 2, 2, m436f3);
        ORDERED = enumC3082d43;
        C3070b4 m436f4 = m436f(enumC3076c4);
        m436f4.m458b(enumC3076c42);
        m436f4.m459a(enumC3076c43);
        EnumC3082d4 enumC3082d44 = new EnumC3082d4("SIZED", 3, 3, m436f4);
        SIZED = enumC3082d44;
        C3070b4 m436f5 = m436f(enumC3076c43);
        m436f5.m458b(enumC3076c44);
        EnumC3082d4 enumC3082d45 = new EnumC3082d4("SHORT_CIRCUIT", 4, 12, m436f5);
        SHORT_CIRCUIT = enumC3082d45;
        f1011v = new EnumC3082d4[]{enumC3082d4, enumC3082d42, enumC3082d43, enumC3082d44, enumC3082d45};
        f995f = m440b(enumC3076c4);
        int m440b = m440b(enumC3076c42);
        f996g = m440b;
        f997h = m440b(enumC3076c43);
        m440b(enumC3076c44);
        m440b(enumC3076c45);
        int i = 0;
        for (EnumC3082d4 enumC3082d46 : values()) {
            i |= enumC3082d46.f1016e;
        }
        f998i = i;
        f999j = m440b;
        int i2 = m440b << 1;
        f1000k = i2;
        f1001l = m440b | i2;
        f1002m = enumC3082d4.f1014c;
        f1003n = enumC3082d4.f1015d;
        f1004o = enumC3082d42.f1014c;
        f1005p = enumC3082d42.f1015d;
        f1006q = enumC3082d43.f1014c;
        f1007r = enumC3082d43.f1015d;
        f1008s = enumC3082d44.f1014c;
        f1009t = enumC3082d44.f1015d;
        f1010u = enumC3082d45.f1014c;
    }

    private EnumC3082d4(String str, int i, int i2, C3070b4 c3070b4) {
        for (EnumC3076c4 enumC3076c4 : EnumC3076c4.values()) {
            Map.EL.putIfAbsent(c3070b4.f971a, enumC3076c4, 0);
        }
        this.f1012a = c3070b4.f971a;
        int i3 = i2 * 2;
        this.f1013b = i3;
        this.f1014c = 1 << i3;
        this.f1015d = 2 << i3;
        this.f1016e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m441a(int i, int i2) {
        return i | (i2 & (i == 0 ? f998i : ~(((f999j & i) << 1) | i | ((f1000k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m440b(EnumC3076c4 enumC3076c4) {
        EnumC3082d4[] values;
        int i = 0;
        for (EnumC3082d4 enumC3082d4 : values()) {
            i |= ((Integer) enumC3082d4.f1012a.get(enumC3076c4)).intValue() << enumC3082d4.f1013b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m439c(InterfaceC2908s interfaceC2908s) {
        int characteristics = interfaceC2908s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2908s.getComparator() == null) ? f995f & characteristics : f995f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3070b4 m436f(EnumC3076c4 enumC3076c4) {
        EnumMap enumMap = new EnumMap(EnumC3076c4.class);
        C3070b4 c3070b4 = new C3070b4(enumMap);
        enumMap.put((EnumMap) enumC3076c4, (EnumC3076c4) 1);
        return c3070b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m435g(int i) {
        return i & ((~i) >> 1) & f999j;
    }

    public static EnumC3082d4 valueOf(String str) {
        return (EnumC3082d4) Enum.valueOf(EnumC3082d4.class, str);
    }

    public static EnumC3082d4[] values() {
        return (EnumC3082d4[]) f1011v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m438d(int i) {
        return (i & this.f1016e) == this.f1014c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m437e(int i) {
        int i2 = this.f1016e;
        return (i & i2) == i2;
    }
}
