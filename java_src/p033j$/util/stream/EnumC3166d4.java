package p033j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p033j$.util.InterfaceC2992s;
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
public final class EnumC3166d4 {
    public static final EnumC3166d4 DISTINCT;
    public static final EnumC3166d4 ORDERED;
    public static final EnumC3166d4 SHORT_CIRCUIT;
    public static final EnumC3166d4 SIZED;
    public static final EnumC3166d4 SORTED;

    /* renamed from: f */
    static final int f1004f;

    /* renamed from: g */
    static final int f1005g;

    /* renamed from: h */
    static final int f1006h;

    /* renamed from: i */
    private static final int f1007i;

    /* renamed from: j */
    private static final int f1008j;

    /* renamed from: k */
    private static final int f1009k;

    /* renamed from: l */
    static final int f1010l;

    /* renamed from: m */
    static final int f1011m;

    /* renamed from: n */
    static final int f1012n;

    /* renamed from: o */
    static final int f1013o;

    /* renamed from: p */
    static final int f1014p;

    /* renamed from: q */
    static final int f1015q;

    /* renamed from: r */
    static final int f1016r;

    /* renamed from: s */
    static final int f1017s;

    /* renamed from: t */
    static final int f1018t;

    /* renamed from: u */
    static final int f1019u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3166d4[] f1020v;

    /* renamed from: a */
    private final Map f1021a;

    /* renamed from: b */
    private final int f1022b;

    /* renamed from: c */
    private final int f1023c;

    /* renamed from: d */
    private final int f1024d;

    /* renamed from: e */
    private final int f1025e;

    static {
        EnumC3160c4 enumC3160c4 = EnumC3160c4.SPLITERATOR;
        C3154b4 m436f = m436f(enumC3160c4);
        EnumC3160c4 enumC3160c42 = EnumC3160c4.STREAM;
        m436f.m458b(enumC3160c42);
        EnumC3160c4 enumC3160c43 = EnumC3160c4.OP;
        m436f.m457c(enumC3160c43);
        EnumC3166d4 enumC3166d4 = new EnumC3166d4("DISTINCT", 0, 0, m436f);
        DISTINCT = enumC3166d4;
        C3154b4 m436f2 = m436f(enumC3160c4);
        m436f2.m458b(enumC3160c42);
        m436f2.m457c(enumC3160c43);
        EnumC3166d4 enumC3166d42 = new EnumC3166d4("SORTED", 1, 1, m436f2);
        SORTED = enumC3166d42;
        C3154b4 m436f3 = m436f(enumC3160c4);
        m436f3.m458b(enumC3160c42);
        m436f3.m457c(enumC3160c43);
        EnumC3160c4 enumC3160c44 = EnumC3160c4.TERMINAL_OP;
        m436f3.m459a(enumC3160c44);
        EnumC3160c4 enumC3160c45 = EnumC3160c4.UPSTREAM_TERMINAL_OP;
        m436f3.m459a(enumC3160c45);
        EnumC3166d4 enumC3166d43 = new EnumC3166d4("ORDERED", 2, 2, m436f3);
        ORDERED = enumC3166d43;
        C3154b4 m436f4 = m436f(enumC3160c4);
        m436f4.m458b(enumC3160c42);
        m436f4.m459a(enumC3160c43);
        EnumC3166d4 enumC3166d44 = new EnumC3166d4("SIZED", 3, 3, m436f4);
        SIZED = enumC3166d44;
        C3154b4 m436f5 = m436f(enumC3160c43);
        m436f5.m458b(enumC3160c44);
        EnumC3166d4 enumC3166d45 = new EnumC3166d4("SHORT_CIRCUIT", 4, 12, m436f5);
        SHORT_CIRCUIT = enumC3166d45;
        f1020v = new EnumC3166d4[]{enumC3166d4, enumC3166d42, enumC3166d43, enumC3166d44, enumC3166d45};
        f1004f = m440b(enumC3160c4);
        int m440b = m440b(enumC3160c42);
        f1005g = m440b;
        f1006h = m440b(enumC3160c43);
        m440b(enumC3160c44);
        m440b(enumC3160c45);
        int i = 0;
        for (EnumC3166d4 enumC3166d46 : values()) {
            i |= enumC3166d46.f1025e;
        }
        f1007i = i;
        f1008j = m440b;
        int i2 = m440b << 1;
        f1009k = i2;
        f1010l = m440b | i2;
        f1011m = enumC3166d4.f1023c;
        f1012n = enumC3166d4.f1024d;
        f1013o = enumC3166d42.f1023c;
        f1014p = enumC3166d42.f1024d;
        f1015q = enumC3166d43.f1023c;
        f1016r = enumC3166d43.f1024d;
        f1017s = enumC3166d44.f1023c;
        f1018t = enumC3166d44.f1024d;
        f1019u = enumC3166d45.f1023c;
    }

    private EnumC3166d4(String str, int i, int i2, C3154b4 c3154b4) {
        for (EnumC3160c4 enumC3160c4 : EnumC3160c4.values()) {
            Map.EL.putIfAbsent(c3154b4.f980a, enumC3160c4, 0);
        }
        this.f1021a = c3154b4.f980a;
        int i3 = i2 * 2;
        this.f1022b = i3;
        this.f1023c = 1 << i3;
        this.f1024d = 2 << i3;
        this.f1025e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m441a(int i, int i2) {
        return i | (i2 & (i == 0 ? f1007i : ~(((f1008j & i) << 1) | i | ((f1009k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m440b(EnumC3160c4 enumC3160c4) {
        EnumC3166d4[] values;
        int i = 0;
        for (EnumC3166d4 enumC3166d4 : values()) {
            i |= ((Integer) enumC3166d4.f1021a.get(enumC3160c4)).intValue() << enumC3166d4.f1022b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m439c(InterfaceC2992s interfaceC2992s) {
        int characteristics = interfaceC2992s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2992s.getComparator() == null) ? f1004f & characteristics : f1004f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3154b4 m436f(EnumC3160c4 enumC3160c4) {
        EnumMap enumMap = new EnumMap(EnumC3160c4.class);
        C3154b4 c3154b4 = new C3154b4(enumMap);
        enumMap.put((EnumMap) enumC3160c4, (EnumC3160c4) 1);
        return c3154b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m435g(int i) {
        return i & ((~i) >> 1) & f1008j;
    }

    public static EnumC3166d4 valueOf(String str) {
        return (EnumC3166d4) Enum.valueOf(EnumC3166d4.class, str);
    }

    public static EnumC3166d4[] values() {
        return (EnumC3166d4[]) f1020v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m438d(int i) {
        return (i & this.f1025e) == this.f1023c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m437e(int i) {
        int i2 = this.f1025e;
        return (i & i2) == i2;
    }
}
