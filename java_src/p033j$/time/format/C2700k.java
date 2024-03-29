package p033j$.time.format;

import com.google.android.exoplayer2.C0483C;
import p033j$.time.AbstractC2674a;
import p033j$.time.temporal.InterfaceC2743o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.k */
/* loaded from: classes2.dex */
public class C2700k implements InterfaceC2697h {

    /* renamed from: f */
    static final long[] f536f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, C0483C.NANOS_PER_SECOND, 10000000000L};

    /* renamed from: a */
    final InterfaceC2743o f537a;

    /* renamed from: b */
    final int f538b;

    /* renamed from: c */
    final int f539c;

    /* renamed from: d */
    private final EnumC2688A f540d;

    /* renamed from: e */
    final int f541e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2700k(InterfaceC2743o interfaceC2743o, int i, int i2, EnumC2688A enumC2688A) {
        this.f537a = interfaceC2743o;
        this.f538b = i;
        this.f539c = i2;
        this.f540d = enumC2688A;
        this.f541e = 0;
    }

    protected C2700k(InterfaceC2743o interfaceC2743o, int i, int i2, EnumC2688A enumC2688A, int i3) {
        this.f537a = interfaceC2743o;
        this.f538b = i;
        this.f539c = i2;
        this.f540d = enumC2688A;
        this.f541e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ EnumC2688A m898c(C2700k c2700k) {
        return c2700k.f540d;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009f A[LOOP:0: B:34:0x0096->B:36:0x009f, LOOP_END] */
    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo886a(p033j$.time.format.C2711v r11, java.lang.StringBuilder r12) {
        /*
            r10 = this;
            j$.time.temporal.o r0 = r10.f537a
            java.lang.Long r0 = r11.m839e(r0)
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            long r2 = r0.longValue()
            j$.time.format.x r11 = r11.m842b()
            r4 = -9223372036854775808
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L1b
            java.lang.String r0 = "9223372036854775808"
            goto L23
        L1b:
            long r4 = java.lang.Math.abs(r2)
            java.lang.String r0 = java.lang.Long.toString(r4)
        L23:
            int r4 = r0.length()
            int r5 = r10.f539c
            java.lang.String r6 = " cannot be printed as the value "
            java.lang.String r7 = "Field "
            if (r4 > r5) goto Lad
            r11.m834a(r0)
            r4 = 0
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r5 = 2
            r8 = 1
            if (r4 < 0) goto L5c
            int[] r4 = p033j$.time.format.AbstractC2694e.f528a
            j$.time.format.A r6 = r10.f540d
            int r6 = r6.ordinal()
            r4 = r4[r6]
            if (r4 == r8) goto L49
            if (r4 == r5) goto L57
            goto L96
        L49:
            int r4 = r10.f538b
            r5 = 19
            if (r4 >= r5) goto L96
            long[] r5 = p033j$.time.format.C2700k.f536f
            r4 = r5[r4]
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 < 0) goto L96
        L57:
            char r2 = r11.m830e()
            goto L93
        L5c:
            int[] r4 = p033j$.time.format.AbstractC2694e.f528a
            j$.time.format.A r9 = r10.f540d
            int r9 = r9.ordinal()
            r4 = r4[r9]
            if (r4 == r8) goto L8f
            if (r4 == r5) goto L8f
            r5 = 3
            if (r4 == r5) goto L8f
            r5 = 4
            if (r4 == r5) goto L71
            goto L96
        L71:
            j$.time.DateTimeException r11 = new j$.time.DateTimeException
            java.lang.StringBuilder r12 = p033j$.time.AbstractC2674a.m964a(r7)
            j$.time.temporal.o r0 = r10.f537a
            r12.append(r0)
            r12.append(r6)
            r12.append(r2)
            java.lang.String r0 = " cannot be negative according to the SignStyle"
            r12.append(r0)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L8f:
            char r2 = r11.m831d()
        L93:
            r12.append(r2)
        L96:
            int r2 = r10.f538b
            int r3 = r0.length()
            int r2 = r2 - r3
            if (r1 >= r2) goto La9
            char r2 = r11.m829f()
            r12.append(r2)
            int r1 = r1 + 1
            goto L96
        La9:
            r12.append(r0)
            return r8
        Lad:
            j$.time.DateTimeException r11 = new j$.time.DateTimeException
            java.lang.StringBuilder r12 = p033j$.time.AbstractC2674a.m964a(r7)
            j$.time.temporal.o r0 = r10.f537a
            r12.append(r0)
            r12.append(r6)
            r12.append(r2)
            java.lang.String r0 = " exceeds the maximum print width of "
            r12.append(r0)
            int r0 = r10.f539c
            r12.append(r0)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2700k.mo886a(j$.time.format.v, java.lang.StringBuilder):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ee, code lost:
        r9 = r17.f541e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f0, code lost:
        if (r9 <= 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f2, code lost:
        if (r5 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x013b, code lost:
        if (r1 <= r2) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0141, code lost:
        if (r1 > r2) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0148  */
    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo885b(p033j$.time.format.C2709t r18, java.lang.CharSequence r19, int r20) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2700k.mo885b(j$.time.format.t, java.lang.CharSequence, int):int");
    }

    /* renamed from: d */
    boolean m897d(C2709t c2709t) {
        int i = this.f541e;
        return i == -1 || (i > 0 && this.f538b == this.f539c && this.f540d == EnumC2688A.NOT_NEGATIVE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public C2700k m896e() {
        return this.f541e == -1 ? this : new C2700k(this.f537a, this.f538b, this.f539c, this.f540d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public C2700k m895f(int i) {
        return new C2700k(this.f537a, this.f538b, this.f539c, this.f540d, this.f541e + i);
    }

    public String toString() {
        StringBuilder m964a;
        Object obj;
        int i = this.f538b;
        if (i == 1 && this.f539c == 19 && this.f540d == EnumC2688A.NORMAL) {
            m964a = AbstractC2674a.m964a("Value(");
            obj = this.f537a;
        } else if (i == this.f539c && this.f540d == EnumC2688A.NOT_NEGATIVE) {
            m964a = AbstractC2674a.m964a("Value(");
            m964a.append(this.f537a);
            m964a.append(",");
            m964a.append(this.f538b);
            m964a.append(")");
            return m964a.toString();
        } else {
            m964a = AbstractC2674a.m964a("Value(");
            m964a.append(this.f537a);
            m964a.append(",");
            m964a.append(this.f538b);
            m964a.append(",");
            m964a.append(this.f539c);
            m964a.append(",");
            obj = this.f540d;
        }
        m964a.append(obj);
        m964a.append(")");
        return m964a.toString();
    }
}
