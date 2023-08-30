package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2903j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2882j implements InterfaceC2879g {

    /* renamed from: a */
    final InterfaceC2903j f596a;

    /* renamed from: b */
    final int f597b;

    /* renamed from: c */
    final int f598c;

    /* renamed from: d */
    private final EnumC2892t f599d;

    /* renamed from: e */
    final int f600e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2882j(InterfaceC2903j interfaceC2903j, int i, int i2, EnumC2892t enumC2892t) {
        this.f596a = interfaceC2903j;
        this.f597b = i;
        this.f598c = i2;
        this.f599d = enumC2892t;
        this.f600e = 0;
    }

    protected C2882j(InterfaceC2903j interfaceC2903j, int i, int i2, EnumC2892t enumC2892t, int i3) {
        this.f596a = interfaceC2903j;
        this.f597b = i;
        this.f598c = i2;
        this.f599d = enumC2892t;
        this.f600e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2882j m683b() {
        return this.f600e == -1 ? this : new C2882j(this.f596a, this.f597b, this.f598c, this.f599d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2882j m682c(int i) {
        return new C2882j(this.f596a, this.f597b, this.f598c, this.f599d, this.f600e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f597b;
        if (i == 1 && this.f598c == 19 && this.f599d == EnumC2892t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f596a;
        } else if (i == this.f598c && this.f599d == EnumC2892t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f596a);
            sb.append(",");
            sb.append(this.f597b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f596a);
            sb.append(",");
            sb.append(this.f597b);
            sb.append(",");
            sb.append(this.f598c);
            sb.append(",");
            obj = this.f599d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
