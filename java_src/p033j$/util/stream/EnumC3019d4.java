package p033j$.util.stream;

import java.util.EnumMap;
import java.util.Map;
import p033j$.util.Map;
import p033j$.util.Spliterator;
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
public final class EnumC3019d4 {
    public static final EnumC3019d4 DISTINCT;
    public static final EnumC3019d4 ORDERED;
    public static final EnumC3019d4 SHORT_CIRCUIT;
    public static final EnumC3019d4 SIZED;
    public static final EnumC3019d4 SORTED;

    /* renamed from: f */
    static final int f1044f;

    /* renamed from: g */
    static final int f1045g;

    /* renamed from: h */
    static final int f1046h;

    /* renamed from: i */
    private static final int f1047i;

    /* renamed from: j */
    private static final int f1048j;

    /* renamed from: k */
    private static final int f1049k;

    /* renamed from: l */
    static final int f1050l;

    /* renamed from: m */
    static final int f1051m;

    /* renamed from: n */
    static final int f1052n;

    /* renamed from: o */
    static final int f1053o;

    /* renamed from: p */
    static final int f1054p;

    /* renamed from: q */
    static final int f1055q;

    /* renamed from: r */
    static final int f1056r;

    /* renamed from: s */
    static final int f1057s;

    /* renamed from: t */
    static final int f1058t;

    /* renamed from: u */
    static final int f1059u;

    /* renamed from: v */
    private static final /* synthetic */ EnumC3019d4[] f1060v;

    /* renamed from: a */
    private final Map f1061a;

    /* renamed from: b */
    private final int f1062b;

    /* renamed from: c */
    private final int f1063c;

    /* renamed from: d */
    private final int f1064d;

    /* renamed from: e */
    private final int f1065e;

    static {
        EnumC3013c4 enumC3013c4 = EnumC3013c4.SPLITERATOR;
        C3007b4 m481f = m481f(enumC3013c4);
        EnumC3013c4 enumC3013c42 = EnumC3013c4.STREAM;
        m481f.m503b(enumC3013c42);
        EnumC3013c4 enumC3013c43 = EnumC3013c4.OP;
        m481f.m502c(enumC3013c43);
        EnumC3019d4 enumC3019d4 = new EnumC3019d4("DISTINCT", 0, 0, m481f);
        DISTINCT = enumC3019d4;
        C3007b4 m481f2 = m481f(enumC3013c4);
        m481f2.m503b(enumC3013c42);
        m481f2.m502c(enumC3013c43);
        EnumC3019d4 enumC3019d42 = new EnumC3019d4("SORTED", 1, 1, m481f2);
        SORTED = enumC3019d42;
        C3007b4 m481f3 = m481f(enumC3013c4);
        m481f3.m503b(enumC3013c42);
        m481f3.m502c(enumC3013c43);
        EnumC3013c4 enumC3013c44 = EnumC3013c4.TERMINAL_OP;
        m481f3.m504a(enumC3013c44);
        EnumC3013c4 enumC3013c45 = EnumC3013c4.UPSTREAM_TERMINAL_OP;
        m481f3.m504a(enumC3013c45);
        EnumC3019d4 enumC3019d43 = new EnumC3019d4("ORDERED", 2, 2, m481f3);
        ORDERED = enumC3019d43;
        C3007b4 m481f4 = m481f(enumC3013c4);
        m481f4.m503b(enumC3013c42);
        m481f4.m504a(enumC3013c43);
        EnumC3019d4 enumC3019d44 = new EnumC3019d4("SIZED", 3, 3, m481f4);
        SIZED = enumC3019d44;
        C3007b4 m481f5 = m481f(enumC3013c43);
        m481f5.m503b(enumC3013c44);
        EnumC3019d4 enumC3019d45 = new EnumC3019d4("SHORT_CIRCUIT", 4, 12, m481f5);
        SHORT_CIRCUIT = enumC3019d45;
        f1060v = new EnumC3019d4[]{enumC3019d4, enumC3019d42, enumC3019d43, enumC3019d44, enumC3019d45};
        f1044f = m485b(enumC3013c4);
        int m485b = m485b(enumC3013c42);
        f1045g = m485b;
        f1046h = m485b(enumC3013c43);
        m485b(enumC3013c44);
        m485b(enumC3013c45);
        int i = 0;
        for (EnumC3019d4 enumC3019d46 : values()) {
            i |= enumC3019d46.f1065e;
        }
        f1047i = i;
        f1048j = m485b;
        int i2 = m485b << 1;
        f1049k = i2;
        f1050l = m485b | i2;
        f1051m = enumC3019d4.f1063c;
        f1052n = enumC3019d4.f1064d;
        f1053o = enumC3019d42.f1063c;
        f1054p = enumC3019d42.f1064d;
        f1055q = enumC3019d43.f1063c;
        f1056r = enumC3019d43.f1064d;
        f1057s = enumC3019d44.f1063c;
        f1058t = enumC3019d44.f1064d;
        f1059u = enumC3019d45.f1063c;
    }

    private EnumC3019d4(String str, int i, int i2, C3007b4 c3007b4) {
        for (EnumC3013c4 enumC3013c4 : EnumC3013c4.values()) {
            Map.EL.putIfAbsent(c3007b4.f1020a, enumC3013c4, 0);
        }
        this.f1061a = c3007b4.f1020a;
        int i3 = i2 * 2;
        this.f1062b = i3;
        this.f1063c = 1 << i3;
        this.f1064d = 2 << i3;
        this.f1065e = 3 << i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m486a(int i, int i2) {
        return i | (i2 & (i == 0 ? f1047i : ~(((f1048j & i) << 1) | i | ((f1049k & i) >> 1))));
    }

    /* renamed from: b */
    private static int m485b(EnumC3013c4 enumC3013c4) {
        EnumC3019d4[] values;
        int i = 0;
        for (EnumC3019d4 enumC3019d4 : values()) {
            i |= ((Integer) enumC3019d4.f1061a.get(enumC3013c4)).intValue() << enumC3019d4.f1062b;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m484c(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        return ((characteristics & 4) == 0 || spliterator.getComparator() == null) ? f1044f & characteristics : f1044f & characteristics & (-5);
    }

    /* renamed from: f */
    private static C3007b4 m481f(EnumC3013c4 enumC3013c4) {
        EnumMap enumMap = new EnumMap(EnumC3013c4.class);
        C3007b4 c3007b4 = new C3007b4(enumMap);
        enumMap.put((EnumMap) enumC3013c4, (EnumC3013c4) 1);
        return c3007b4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m480g(int i) {
        return i & ((~i) >> 1) & f1048j;
    }

    public static EnumC3019d4 valueOf(String str) {
        return (EnumC3019d4) Enum.valueOf(EnumC3019d4.class, str);
    }

    public static EnumC3019d4[] values() {
        return (EnumC3019d4[]) f1060v.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m483d(int i) {
        return (i & this.f1065e) == this.f1063c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m482e(int i) {
        int i2 = this.f1065e;
        return (i & i2) == i2;
    }
}
