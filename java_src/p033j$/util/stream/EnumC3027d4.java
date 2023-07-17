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
    static final int f991f;

    /* renamed from: g */
    static final int f992g;

    /* renamed from: h */
    static final int f993h;

    /* renamed from: i */
    private static final int f994i;

    /* renamed from: j */
    private static final int f995j;

    /* renamed from: k */
    private static final int f996k;

    /* renamed from: l */
    static final int f997l;

    /* renamed from: m */
    static final int f998m;

    /* renamed from: n */
    static final int f999n;

    /* renamed from: o */
    static final int f1000o;

    /* renamed from: p */
    static final int f1001p;

    /* renamed from: q */
    static final int f1002q;

    /* renamed from: r */
    static final int f1003r;

    /* renamed from: s */
    static final int f1004s;

    /* renamed from: t */
    static final int f1005t;

    /* renamed from: u */
    static final int f1006u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3027d4[] f1007v;

    /* renamed from: a */
    private final Map f1008a;

    /* renamed from: b */
    private final int f1009b;

    /* renamed from: c */
    private final int f1010c;

    /* renamed from: d */
    private final int f1011d;

    /* renamed from: e */
    private final int f1012e;

    static {
        EnumC3021c4 enumC3021c4 = EnumC3021c4.SPLITERATOR;
        C3015b4 m418f = m418f(enumC3021c4);
        EnumC3021c4 enumC3021c42 = EnumC3021c4.STREAM;
        m418f.m440b(enumC3021c42);
        EnumC3021c4 enumC3021c43 = EnumC3021c4.OP;
        m418f.m439c(enumC3021c43);
        EnumC3027d4 enumC3027d4 = new EnumC3027d4("DISTINCT", 0, 0, m418f);
        DISTINCT = enumC3027d4;
        C3015b4 m418f2 = m418f(enumC3021c4);
        m418f2.m440b(enumC3021c42);
        m418f2.m439c(enumC3021c43);
        EnumC3027d4 enumC3027d42 = new EnumC3027d4("SORTED", 1, 1, m418f2);
        SORTED = enumC3027d42;
        C3015b4 m418f3 = m418f(enumC3021c4);
        m418f3.m440b(enumC3021c42);
        m418f3.m439c(enumC3021c43);
        EnumC3021c4 enumC3021c44 = EnumC3021c4.TERMINAL_OP;
        m418f3.m441a(enumC3021c44);
        EnumC3021c4 enumC3021c45 = EnumC3021c4.UPSTREAM_TERMINAL_OP;
        m418f3.m441a(enumC3021c45);
        EnumC3027d4 enumC3027d43 = new EnumC3027d4("ORDERED", 2, 2, m418f3);
        ORDERED = enumC3027d43;
        C3015b4 m418f4 = m418f(enumC3021c4);
        m418f4.m440b(enumC3021c42);
        m418f4.m441a(enumC3021c43);
        EnumC3027d4 enumC3027d44 = new EnumC3027d4("SIZED", 3, 3, m418f4);
        SIZED = enumC3027d44;
        C3015b4 m418f5 = m418f(enumC3021c43);
        m418f5.m440b(enumC3021c44);
        EnumC3027d4 enumC3027d45 = new EnumC3027d4("SHORT_CIRCUIT", 4, 12, m418f5);
        SHORT_CIRCUIT = enumC3027d45;
        f1007v = new EnumC3027d4[]{enumC3027d4, enumC3027d42, enumC3027d43, enumC3027d44, enumC3027d45};
        f991f = m422b(enumC3021c4);
        int m422b = m422b(enumC3021c42);
        f992g = m422b;
        f993h = m422b(enumC3021c43);
        m422b(enumC3021c44);
        m422b(enumC3021c45);
        int i = 0;
        for (EnumC3027d4 enumC3027d46 : values()) {
            i |= enumC3027d46.f1012e;
        }
        f994i = i;
        f995j = m422b;
        int i2 = m422b << 1;
        f996k = i2;
        f997l = m422b | i2;
        f998m = enumC3027d4.f1010c;
        f999n = enumC3027d4.f1011d;
        f1000o = enumC3027d42.f1010c;
        f1001p = enumC3027d42.f1011d;
        f1002q = enumC3027d43.f1010c;
        f1003r = enumC3027d43.f1011d;
        f1004s = enumC3027d44.f1010c;
        f1005t = enumC3027d44.f1011d;
        f1006u = enumC3027d45.f1010c;
    }

    private EnumC3027d4(String str, int i, int i2, C3015b4 c3015b4) {
        for (EnumC3021c4 enumC3021c4 : EnumC3021c4.values()) {
            Map.EL.putIfAbsent(c3015b4.f967a, enumC3021c4, 0);
        }
        this.f1008a = c3015b4.f967a;
        int i3 = i2 * 2;
        this.f1009b = i3;
        this.f1010c = 1 << i3;
        this.f1011d = 2 << i3;
        this.f1012e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m423a(int i, int i2) {
        return i | (i2 & (i == 0 ? f994i : ~(((f995j & i) << 1) | i | ((f996k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m422b(EnumC3021c4 enumC3021c4) {
        EnumC3027d4[] values;
        int i = 0;
        for (EnumC3027d4 enumC3027d4 : values()) {
            i |= ((Integer) enumC3027d4.f1008a.get(enumC3021c4)).intValue() << enumC3027d4.f1009b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m421c(InterfaceC2853s interfaceC2853s) {
        int characteristics = interfaceC2853s.characteristics();
        return ((characteristics & 4) == 0 || interfaceC2853s.getComparator() == null) ? f991f & characteristics : f991f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3015b4 m418f(EnumC3021c4 enumC3021c4) {
        EnumMap enumMap = new EnumMap(EnumC3021c4.class);
        C3015b4 c3015b4 = new C3015b4(enumMap);
        enumMap.put((EnumMap) enumC3021c4, (EnumC3021c4) 1);
        return c3015b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m417g(int i) {
        return i & ((~i) >> 1) & f995j;
    }

    public static EnumC3027d4 valueOf(String str) {
        return (EnumC3027d4) Enum.valueOf(EnumC3027d4.class, str);
    }

    public static EnumC3027d4[] values() {
        return (EnumC3027d4[]) f1007v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m420d(int i) {
        return (i & this.f1012e) == this.f1010c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m419e(int i) {
        int i2 = this.f1012e;
        return (i & i2) == i2;
    }
}
