package p034j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC2662e {

    /* renamed from: a */
    protected final int f922a;

    /* renamed from: b */
    protected int f923b;

    /* renamed from: c */
    protected int f924c;

    /* renamed from: d */
    protected long[] f925d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2662e() {
        this.f922a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2662e(int i) {
        if (i >= 0) {
            this.f922a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f924c;
        return i == 0 ? this.f923b : this.f925d[i] + this.f923b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m431s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f922a : Math.min((this.f922a + i) - 1, 30));
    }
}
